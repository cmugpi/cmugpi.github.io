---
layout: page
title: "2-factor-authentication instructions for Collab part 2"
# What topic does this page belong to?
group: git
# Relative ordering of lessons within a topic
order: 5
#script: /javascripts/mypage.js
#scripts:
#  - /javascripts/one.js
#  - /javascripts/two.js
---


{% include toc.md %}

# Creating your personal access token
1. [Verify your email address][verify email], if it hasn't been verified yet.

2. In the upper-right corner of any page, click your profile photo, then click **Settings**.   
<img class="image" style="display:block;margin-left:auto;margin-right:auto;" alt="" width="25%" src="{{ site.baseurl }}/topics/git/2fa-instructions/images/image1.png">
<br/>

3. In the left sidebar, click **Developer settings**.  
<img class="image" style="display:block;margin-left:auto;margin-right:auto;" alt="" width="30%" src="{{ site.baseurl }}/topics/git/2fa-instructions/images/image8.png">
<br/>

4. In the left sidebar, click **Personal access tokens**.    
<img class="image" style="display:block;margin-left:auto;margin-right:auto;" alt="" width="30%" src="{{ site.baseurl }}/topics/git/2fa-instructions/images/image3.png">
<br/>

5. Click Generate new token.  
<img class="image" style="display:block;margin-left:auto;margin-right:auto;" alt="" width="70%" src="{{ site.baseurl }}/topics/git/2fa-instructions/images/image9.png">
<br/>

6. Give your token a descriptive name.  
<img class="image" style="display:block;margin-left:auto;margin-right:auto;" alt="" width="70%" src="{{ site.baseurl }}/topics/git/2fa-instructions/images/image6.png">
<br/>

7. To give your token an expiration, select the Expiration drop-down menu, then click a default or use the calendar picker.  
<img class="image" style="display:block;margin-left:auto;margin-right:auto;" alt="" width="70%" src="{{ site.baseurl }}/topics/git/2fa-instructions/images/image5.png">
<br/>

8. Select the scopes, or permissions, you'd like to grant this token. **To use your token to access repositories from the command line, select repo.**  
<img class="image" style="display:block;margin-left:auto;margin-right:auto;" alt="" width="70%" src="{{ site.baseurl }}/topics/git/2fa-instructions/images/image7.gif">
<br/>

9. Click Generate token. Make sure to copy it so that you can use it!  
<img class="image" style="display:block;margin-left:auto;margin-right:auto;" alt="" width="60%" src="{{ site.baseurl }}/topics/git/2fa-instructions/images/image2.png">
<br/>

10. **Warning**: Treat your tokens like passwords and keep them secret. When working with the API, use tokens as environment variables instead of hardcoding them into your programs.  


# Using and caching your token
Do the follow from the terminal:

First, configure the local GIT client with a username and email address,
{% highlight bash %}
$ git config --global user.name "your_github_username" 
$ git config --global user.email "your_github_email" 
$ git config -l
{% endhighlight %}

Once GIT is configured, we can begin using it to access GitHub. 

Example:
{% highlight bash %}
$ git clone https://github.com/YOUR-USERNAME/YOUR-REPOSITORY 
> Cloning into `Spoon-Knife`...
$ Username for 'https://github.com' : username 
$ Password for 'https://github.com' : give your personal access token here
{% endhighlight %}

Now cache the given record in your computer to remembers the token:
{% highlight bash %}
$ git config --global credential.helper cache
{% endhighlight %}

Now try to pull with -v to verify
{% highlight bash %}
$ git pull -v
{% endhighlight %}

If needed, anytime you can delete the cache record by:
{% highlight bash %}
$ git config --global --unset credential.helper 
$ git config --system --unset credential.helper
{% endhighlight %}

# More resources
  - [PDF version of this page of instructions][F21 pdf]
  - [Github Docs on creating a personal access token][github docs]
  - [Stackoverflow post on using your tokens][stackoverflow post]

[verify email]: https://docs.github.com/en/get-started/signing-up-for-github/verifying-your-email-address 

[github docs]: https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token
[stackoverflow post]: https://stackoverflow.com/questions/68775869/support-for-password-authentication-was-removed-please-use-a-personal-access-to
[F21 pdf]: {{ "/topics/git/2fa-instructions/2fa-instructions.pdf" | prepend: site.baseurl }}   