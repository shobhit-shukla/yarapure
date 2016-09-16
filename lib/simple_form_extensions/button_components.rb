module ButtonComponents
    def submit_cancel(*args, &block)
      template.content_tag :div, :class => "form-group" do
      template.content_tag :div, :class => "col-sm-offset-4 col-sm-10" do
        options = args.extract_options!

        # class
        options[:class] = [options[:class], 'btn-success'].compact

        #
        args << options


        # with cancel link
        if cancel = options.delete(:cancel)
          submit(*args, &block) + '&nbsp;&nbsp;'.html_safe + template.link_to("Cancel", cancel, class: 'btn btn-primary')
        else
          submit(*args, &block)
        end

      end
      end
    end

end

SimpleForm::FormBuilder.send :include, ButtonComponents
