# Optimism demo application

You're someone that wants to use Rails' remote forms, needs in-line error messages and doesn't want to waste a single minute building error management logic.

Until [Optimism](https://github.com/leastbad/optimism) was released, you could only pick two of the above.

You can play with an instance of this project [on Heroku](https://optimism-demo.herokuapp.com/).

This isn't an exhaustive demonstration that shows off every feature. For example, no attempt is made to show realtime, per-field validations because the implementation details are going to be different for every application. However, Optimism most certainly supports single-attribute validations; just pass in a single symbol or array of symbols instead of the `post_params` hash to the `broadcast_errors` method.
