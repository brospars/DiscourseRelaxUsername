# name: DiscourseRelaxUsername
# about: Relax username restrictions for Obsidian
# version: 1.0.0
# authors: Jacob Gillespie

class UsernameValidator
  private

  def username_no_double_special?
    return unless errors.empty?

    # This originally blocked two or more underscores
    if username =~ /[-.]{2,}/
      self.errors << I18n.t(:'user.username.must_not_contain_two_special_chars_in_seq')
    end
  end
end
