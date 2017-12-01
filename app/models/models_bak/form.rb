class Form < ActiveRecord::Base
    # Mounts paperclip file
    has_attached_file :document1
    has_attached_file :document2
    has_attached_file :document3
    has_attached_file :document4
    has_attached_file :document5
    validates_attachment :document1, :content_type => {:content_type => %w(image/jpeg image/jpg image/png application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document)}, :size => { :in => 0..10000.kilobytes }
    validates_attachment :document2, :content_type => {:content_type => %w(image/jpeg image/jpg image/png application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document)}, :size => { :in => 0..10000.kilobytes }
    validates_attachment :document3, :content_type => {:content_type => %w(image/jpeg image/jpg image/png application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document)}, :size => { :in => 0..10000.kilobytes }
    validates_attachment :document4, :content_type => {:content_type => %w(image/jpeg image/jpg image/png application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document)}, :size => { :in => 0..10000.kilobytes }
    validates_attachment :document5, :content_type => {:content_type => %w(image/jpeg image/jpg image/png application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document)}, :size => { :in => 0..10000.kilobytes }

    def self.fields
        return []
    end

    self.fields.each do |field|
        attr_accessor field
    end
    
    def self.issue_types
        return %w()
    end
    
    def self.names
        return []
    end
    
    def self.headings
        return []
    end
    
    def self.headings_names_and_fields
        return []
    end
end
