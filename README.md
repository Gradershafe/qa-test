# Instalation

1) install ruby
2) chrome drive and appropriate version of chrome for it
3) run: bundle install

## Test run

In order to run any of the tests:
 
1) go to ./features/farm_drop_features/*
2) find any test which u wanna to run
3) run next command:
cucumber -tags <list of tags> <feature_file_which_contain_those_tests>
Example:

    cucumber -t @ff001_tc01 features/farm_drop_features/ff001_sign_up_positive.feature

