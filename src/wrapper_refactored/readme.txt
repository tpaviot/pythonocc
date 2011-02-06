
to generate docs: 
run doc_generator.py from the wrapper_refactored dir.
it writes the files to doc/rest, it pickles some of the results from the module builder in docs/tmp, delete the pickle files to force rebuild.

to generate and compare swig files: 
run compare_swig_files.py (there is no caching)

sync_module_configuration.py reads the Modules.py from the original wrapper dir and rewrites configuration.yml

 