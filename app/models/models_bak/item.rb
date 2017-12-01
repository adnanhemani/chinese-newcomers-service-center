class Item < ActiveRecord::Base
    has_one :Form_B
    has_one :Form_K
    
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
    
    def self.all_fields
        return Form_B.fields + Form_K.fields
    end
end
