# How to use `.gitconfig-common`

I need to use different email for git on different machines. This is done by
using a `.gitconfig` that looks something like this:

```
[user]
	email = my@email.com
	name = Barabas Raffai
[include]
	path = ~/.gitconfig-common
```
