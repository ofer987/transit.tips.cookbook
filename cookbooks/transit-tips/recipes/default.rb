# frozen_string_literal: true

#
# Cookbook:: transit-tips
# Recipe:: default
#
# Copyright:: 2017, Dan Jakob Ofer, All Rights Reserved.

module Files
  def self.chef_dir
    CHEF_DIR.mkdir unless CHEF_DIR.exist?

    CHEF_DIR
  end

  def self.test
    chef_dir.join('test')
  end

  private

  CHEF_DIR = Pathname.new(ENV['HOME']).join('chef').freeze
end

file Files.test do
  content 'Hello Chef!'
end
