module RustlesHelper
  def choose_new_or_edit
      if action_name == 'new' || action_name == 'create'
        confirm_rustles_path
      elsif action_name == 'edit'
        rustle_path
      end
  end    
end
