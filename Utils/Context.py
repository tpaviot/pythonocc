class assert_isdone(object):
    '''
    raises an assertion error when IsDone() returns false, with the error specified in error_statement
    '''
    def __init__(self, to_check, error_statement):
        self.to_check = to_check
        self.error_statement = error_statement
        
    def __enter__(self, ):
        if self.to_check.IsDone():
            pass
        else:
            raise AssertionError, self.error_statement
    def __exit__(self, type, value, traceback):
        pass
