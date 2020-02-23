# Optimism demo application

You're someone that wants to use Rails' remote forms, needs in-line error messages and doesn't want to waste a single minute building error management logic.

Until [Optimism](https://github.com/leastbad/optimism) was released, you could only pick two of the above.

You can play with an instance of this project [on Heroku](https://optimism-demo.herokuapp.com/).

Here is every step required to recreate this project from scratch:

1. `rails new optimism-demo -T -d postgresql`
2. Add the `optimism` gem to your [Gemfile](https://github.com/leastbad/optimism-demo/blob/master/Gemfile)
3. `yarn add cable_ready`
4. `bundle`
5. `rake optimism:install`
6. `rails g scaffold Post name:string age:integer body:text consent:boolean`
7. `rake db:prepare`
8. `rake db:migrate`
9. Add `root "posts#index"` to your [config/routes.rb](https://github.com/leastbad/optimism-demo/blob/master/config/routes.rb)
10. Add [validations](https://guides.rubyonrails.org/active_record_validations.html#validation-helpers) to [app/models/post.rb](https://github.com/leastbad/optimism-demo/blob/master/app/models/post.rb)
11. Now for the "hard" part: you have to make some additions to your [app/views/posts/\_form.html.erb](https://github.com/leastbad/optimism-demo/blob/master/app/views/posts/_form.html.erb) First, **remove `local: true`** from the first line; it's vitally important that your form is submitting via Ajax. Second, remove the error display, which is roughly lines 2-12. Third, you need to add one empty `span` tag below each input element you're validating. You will set the span's id using the provided `error_id_for` helper.
12. Open the [posts controller](https://github.com/leastbad/optimism-demo/blob/master/app/controllers/posts_controller.rb) and replace the _failure case_ of the create and update blocks with calls to the `broadcast_errors` helper. Then follow each change with a `head :ok` so that it doesn't complain.

That's it. You're technically done, although it might be nice if the validation messages could be formatted differently. And wouldn't it be neat if we could set a CSS class on the container that would make the input element respond to any errors as well?

13. Revisit [app/views/posts/\_form.html.erb](https://github.com/leastbad/optimism-demo/blob/master/app/views/posts/_form.html.erb) and use the `container_id_for` helper on each input element's containing div. Rails scaffold views use the `field` class, but if you're using Bootstrap then you'll be working with `form-group` classes. You'll also want to throw some classes on the `error_id_for` helpers, eg. `d-none` to hide the validation error when it's not needed, and optionally some visual styles for making your errors noticeable.
14. Update your [CSS](https://github.com/leastbad/optimism-demo/blob/master/app/assets/stylesheets/application.css) with the minimum styles required to achieve the desired effect. The key trick here is to make sure the validation errors are hidden _unless_ there's an error class on the container, which forces the same CSS class that usually hides to instead reveal the element. For those of you using the Bootstrap CSS framework, there are some Bootstrap-specific sample code at the bottom of the file.

This isn't an exhaustive demonstration that shows off every feature. For example, no attempt is made to show realtime, per-field validations because the implementation details are going to be different for every application. However, Optimism most certainly supports single-attribute validations; just pass in a single symbol or array of symbols instead of the `post_params` hash to the `broadcast_errors` method.
