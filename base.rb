###
# Template assumes you already have the branch checkout
# Usage rails -m #{path_to_base_template.rb}

#SET the template base to your local cloned repo
template_base = "~/projects/app-templates"

#update this list 
templates     = ['auth', 'testing', 'gems', 'plugins','sendmail', 'svn']

templates.each do |template|
  load_template( "#{template_base}/#{template}.rb")
end