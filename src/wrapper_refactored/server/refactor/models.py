'''
Created on May 11, 2010

@author: henrik
'''
from django.db import models
from server.source.models import Declaration


class RefactorPatternManager(models.Manager):
    def propose_refactor(self, pattern, decl, arguments=None, user=None, approved=None):
        pattern, created = self.get_or_create(name=pattern)
        RefactorProposal._default_manager.get_or_create(
            pattern=pattern, declaration=decl, approved=approved)


class RefactorPattern(models.Model):
    name = models.CharField(max_length=127, unique=True, db_index=True)
    
    objects = RefactorPatternManager()
    
    class Meta:
        ordering = ('name',)
        
    def __unicode__(self):
        return self.name

class RefactorProposal(models.Model):
    declaration = models.ForeignKey(Declaration, related_name='proposed_refactorings')
    pattern = models.ForeignKey(RefactorPattern, related_name='proposed_applications')
    arguments = models.CharField(max_length=512)
    approved = models.BooleanField()
    
    class Meta:
        unique_together = (('pattern', 'declaration', 'arguments'),)
        
    def __unicode__(self):
        return u'%s [%s:%s] appr:%s' % (self.declaration, self.pattern, self.arguments, self.approved)