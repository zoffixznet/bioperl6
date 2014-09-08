use v6;

use Bio::Role::Aliased;

role Bio::Role::Describable;
    
has Str $.display_name              is rw = 'new-id';
has Str $.description               is rw;

# TODO: best way would to have aliased working again - takadonet
# Working again but not on roles

#has Str $.description               is rw is aliased<desc>;

method desc ($desc?) {
    self.description = $desc if $desc;
    return self.description;
}
