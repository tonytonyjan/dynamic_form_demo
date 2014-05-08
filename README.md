rails g model form title:string description:text
rails g scaffold admin/form title:string description:text --migration=false --parent=form

rails g model field form:references name:string type:integer required:boolean multiple:boolean options:string

rails g model attendee user:references:uniq form:references
rails g scaffold admin/attendee user:references form:references --migration=false --parent=attendee

rails g model field_data attendee:references field:references value:string