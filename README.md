# Project 1 - *Tipster*

**Tipster** is a tip calculator application for iOS.

Submitted by: **Emily Jiang**

Time spent: **6** hours spent in total

## User Stories

The following **required** functionality is complete:

* [x] User can enter a bill amount, choose a tip percentage, and see the tip and total values.

The following **optional** features are implemented:

* [ ] Settings page to change the default tip percentage.
* [x] UI animations
* [ ] Remembering the bill amount across app restarts (if <10mins)
* [ ] Using locale-specific currency and currency thousands separators.
* [ ] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:

- [x] App icon, simple launch screen, and updated minimalistic UI
- [x] Implemented the ***Reverse Tipster*** calculator: are you on a strict budget? Only have $25 in your pocket for dinner? ***Reverse Tipster*** is a page that asks you for your budget and desired tip percentage, then tells you what your order (pre-tip total) needs to stay under. Back button brings the user back to the regular Tipster calculator. I added *Reverse Tipster* because I felt that I would actually make use of this feature in real life, whereas the normal tip calculator probably wouldn't be worth having an extra app for.

## Video Walkthrough

Here's a walkthrough of implemented user stories:

![tipster_dem](https://user-images.githubusercontent.com/43052066/123021491-31499280-d3a2-11eb-9136-149ddb4b5029.gif)


## Notes
Describe any challenges encountered while building the app:
- After following the animations tutorial, I had trouble getting the app to work again, as the text field would descend every time it was empty and eventually move off the screen. Then, after implementing the reverse animation, it was a little bit tricky to figure out when the move-up/move-down animations should be activated: the field should move down specifically when its text length *changes* from 0 to 1. I arrived at a pretty simple solution: store a property keeping track of the field's text length, so that when the text changes, I can compare its new length to the previous length and only activate the move-up animation when the previous length was 0.
- I wanted users to toggle between *Tipster* and *Reverse Tipster* using a bar at the bottom of the screen (as Instagram does, except with 2 instead of 5 options). However, I couldn't exactly figure out how to do this, and *Tipster* was already set up with a Navigation Controller, so I followed the tutorial for how to add a Settings page to the controller, and made the new page *Reverse Tipster* instead of Settings.

Other notes:
- Given that the syntax of *Reverse Tipster* was basically copied from *Tipster*, it would have made more sense to keep Reverse on the same page and activate it with a switch (which I did see in the Objects Library). However, I thought it was good practice for me to learn how to create the new page.

## Credits

List an 3rd party libraries, icons, graphics, or other assets you used in your app.

- [AFNetworking](https://github.com/AFNetworking/AFNetworking) - networking task library

## License

    Copyright 2021 Emily Jiang

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
