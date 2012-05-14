#!/usr/bin/env ruby

git_bundles = %w{
  git://github.com/astashov/vim-ruby-debugger.git
  git://github.com/godlygeek/tabular.git
  git://github.com/scrooloose/nerdtree.git
  git://github.com/tomtom/tcomment_vim.git
  git://github.com/tpope/vim-endwise.git
  git://github.com/tpope/vim-fugitive.git
  git://github.com/tpope/vim-git.git
  git://github.com/tpope/vim-markdown.git
  git://github.com/tpope/vim-rails.git
  git://github.com/tpope/vim-repeat.git
  git://github.com/tpope/vim-surround.git
  git://github.com/tpope/vim-vividchalk.git
  git://github.com/tsaleh/vim-tmux.git
  git://github.com/vim-ruby/vim-ruby.git
  git://github.com/vim-scripts/IndexedSearch.git
  git://github.com/jgdavey/vim-blockle.git
  git://github.com/Shougo/neocomplcache.git
  git://github.com/sickill/vim-pasta.git
  git://github.com/ecomba/vim-ruby-refactoring.git
}

require 'fileutils'
require 'open-uri'

bundles_dir = File.join(File.dirname(__FILE__), "bundle")

FileUtils.rm_rf(bundles_dir)
FileUtils.mkdir(bundles_dir)
FileUtils.cd(bundles_dir)

git_bundles.each do |url|
  puts url
  `git clone -q #{url} ~/.vim/bundles/`
end

Dir["*/.git"].each {|f| FileUtils.rm_rf(f) }

