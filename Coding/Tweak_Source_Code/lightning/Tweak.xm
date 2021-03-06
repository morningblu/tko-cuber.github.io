/**

    Lightning
      by TKO-Cuber

      A simple tweak to speed up the animations in iOS
        Works on iOS 9, 10, and 11
        :)

**/

  //DRM incoming
%hook SpringBoard
  -(void)applicationDidFinishLaunching:(id)application {
    %orig;

  if ([[NSFileManager defaultManager] fileExistsAtPath:@"/var/mobile/Documents/TKO-Cuber/Lightning"])
    {
        UIAlertView *alert1 = [[UIAlertView alloc] initWithTitle:@"Unoffocial Copy"
        message:@"Hey there! It would appear you are using an unofficial copy of Lightning! The tweak will continue to work, but please consider geting the official version from https://tko-cuber.github.io/. Tweaks from pirate repos are often outdated and unstable, so do yourself a favor and reinstall it from my repo. Most, if not all my tweaks are fre, so it does you no harm at all :)"
        delegate:self
        cancelButtonTitle:@"Thanks TKO"
        otherButtonTitles:nil];

        [alert1 show];
        [alert1 release];
      }
    }
  %end
//end my bad DRM message thingy

  %hook SBAnimationFactorySettings

    -(double)slowDownFactor {
        return 0.6;
      }

    -(void)setSlowAnimations:(BOOL)arg1 {
      %orig(NO);
    }

    -(void)setSlowDownFactor:(double)arg1 {
      %orig(0.6);
    }

    -(BOOL)slowAnimations {
      return FALSE;
    }

%end
