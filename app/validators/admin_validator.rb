class AdminValidator
  def validate(record)
    if Admin.where.not(id: record.id).any? # If there's any other admin than the user you're modifying
      record.errors.add "Only one admin is allowed"
    end
  end
end
