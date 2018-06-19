This is an attempt to stop iPhone from replacing "fuck"s with "duck"s.

When a user signs in to iCloud account, his keyboard shortcuts are synced between all devices.

The idea is to set shortcuts on user's MacOS device to "fuck:fuck"s and hopefully these shortcuts will be synced to the iPhone. iOS tends not to replace (and even suggests as a typo-fix) words from its "from"-list of keyboard shortcuts.

Inspired by https://michaelkummer.com/technology/deleted-keyboard-shortcuts-text-replacements-keep-coming-back/ (although latest update says that @apple stopped supporting shortcuts sync across devices -- what a smart way to fix an issue...)

Where MacOS stores shortcuts? So far I found two places:
* `defaults read -g NSUserDictionaryReplacementItems`
* `find "~/Library/Dictionaries/CoreDataUbiquitySupport/" -name "*.db"` -- multiple sqlite databases (what a mess, dear @apple)

I'm shuffling these places trying to achieve my goal.
