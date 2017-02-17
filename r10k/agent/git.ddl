metadata :name        => 'git',
         :description => 'Git service for MCollective',
         :author      => 'Tobias Brunner',
         :license     => 'BSD-3-Clause',
         :version     => '1.0',
         :url         => 'https://github.com/vshn/puppet-in-docker/blob/master/r10k/README.md',
         :timeout     => 60

action 'cln', :description => 'Clones a Git repository' do
    display :always

    input :repo,
          :prompt      => 'Repository',
          :description => 'URL of the repository to clone',
          :type        => :string,
          :validation  => '.*',
          :optional    => false,
          :maxlength   => 1024

    input :path,
          :prompt      => 'Path',
          :description => 'Path to clone the repo to',
          :type        => :string,
          :validation  => '.*',
          :optional    => false,
          :maxlength   => 1024

    output :msg,
           :description => 'Git message',
           :display_as  => 'Message',
           :default     => ''
end

action 'pll', :description => 'Pulls a Git repository' do
    display :always

    input :path,
          :prompt      => 'Path',
          :description => 'Path to the Git repo',
          :type        => :string,
          :validation  => '.*',
          :optional    => false,
          :maxlength   => 1024

    input :remote,
          :prompt      => 'Git remote',
          :description => 'Name of the Git remote to pull from',
          :type        => :string,
          :validation  => '.*',
          :optional    => true,
          :default     => 'origin',
          :maxlength   => 30

    input :ref,
          :prompt      => 'Git ref for pull',
          :description => 'Git ref to pull from',
          :type        => :string,
          :validation  => '.*',
          :optional    => true,
          :default     => 'master',
          :maxlength   => 30

    output :msg,
           :description => 'Git message',
           :display_as  => 'Message',
           :default     => ''
end

action 'rst', :description => 'Hard resets a Git repository to HEAD' do
    display :always

    input :path,
          :prompt      => 'Path',
          :description => 'Path to the Git repo',
          :type        => :string,
          :validation  => '.*',
          :optional    => false,
          :maxlength   => 1024

    output :msg,
           :description => 'Git message',
           :display_as  => 'Message',
           :default     => ''
end

action 'chckt', :description => 'Checks out a Git ref' do
    display :always

    input :path,
          :prompt      => 'Path',
          :description => 'Path to the Git repo',
          :type        => :string,
          :validation  => '.*',
          :optional    => false,
          :maxlength   => 1024

    input :ref,
          :prompt      => 'Git ref',
          :description => 'Ref to checkout',
          :type        => :string,
          :validation  => '.*',
          :optional    => false,
          :maxlength   => 1024

    output :msg,
           :description => 'Git message',
           :display_as  => 'Message',
           :default     => ''
end
