# [Theta](https://buildwiththeta.com): UI injection for Flutter apps

Prototype and test dynamic user interfaces with instant fly-on-air updates. You can update the user interface without rebuilding it. You can directly set up remote A/B tests and see the analysis to improve UX and sales.

- Documentation: https://docs.buildwiththeta.com

You can run UI/UX tests in your app with Theta on the following platforms:

- **iOS** ([Flutter](https://pub.dev/packages/theta), Swift coming soon)
- **Android** ([Flutter](https://pub.dev/packages/theta))
- **Web** ([Flutter](https://pub.dev/packages/theta))
- **VisionOS** ([Flutter](https://pub.dev/packages/theta), Swift coming soon)
- **macOS** ([Flutter](https://pub.dev/packages/theta), Swift coming soon)
- **Windows** ([Flutter](https://pub.dev/packages/theta))

<img width="600px" src="https://github.com/buildwiththeta/buildwiththeta/assets/49411143/c2594691-69a9-45c5-94f7-ea1d808d63bc" />

## Why Theta?

Building a Flutter app means you will take little time to program it from scratch, but you will spend almost all your time updating and testing it to improve UX and sales.

But testing and updating even small parts of our app's UI (e.g., paywalls, news dialogs, or even text copy) is a mechanism that requires putting hands on code and wasting a lot of time with each change.

This is crazy, which is why I created a tool to update and test apps in production with a few clicks. Integrate Theta to get started right away: buildwiththeta.com

### Developers shouldn't hardcode UI components

Server-driven design systems focus on creating dynamic user interfaces (UIs) that can be updated in real-time via APIs. Instead of hardcoding design components into the app, they are stored remotely. This allows central updates that are propagated instantly across all instances of the app, without the need for user downloads.

Theta offers several advantages:
- **⚡️ Integrate tonight:** Theta provides a UI editor for designing the UI that can be integrate directly into your project with SDKs. Theta doesn’t limit what you can do with the rest of your app. You can embed complex platform-specific widgets like maps, web views, media players, and camera feeds within your remote UI, or add a UIBox() inside an existing custom page to make it dynamic.
- **🔀 Set tests remotely with instant effects:** Set up numerous A/B tests on your UI components to improve the user experience and sales of your app. Everything can be done visually on Theta, with a direct connection (and effect) to your customers' apps without wasting time.
- **🧋 Team collaboration and version control:** Theta provides tools for team collaboration, project logs, and branches, facilitating efficient teamwork in app development. The version control feature allows tracking and management of different versions of the your design system components, a crucial aspect for maintaining app quality and addressing bugs or issues.
- **💫 Efficiency:** Remote design systems like Theta allow for design updates to be rolled out instantly via API, across all instances of the app. This bypasses the traditional cycle of updating and downloading new app versions. Also, because the design system is centralized, it ensures a consistent look and feel across all platforms, enhancing the user experience.

## Integrate tonight

- **Sign up**
    - To begin your Theta journey, sign up for Theta on the [buildwiththeta.com](https://buildwiththeta.com) website.

- **Get your API key**
  - To share your remote UI in your project, you'll need to obtain your API key from the project settings.
  - [📚 Follow our guide](https://docs.buildwiththeta.com/en/studio/get_project_api)

- **Integrate in your codebase**
  - Use `Theta.initialize(anonKey: "")` at the root of the project, then use `UIBox("component name")` to display a remote component within your view.
  - [📚 Follow our documentation for Flutter](https://pub.dev/packages/theta)

## Support
- [GitHub Discussions](https://github.com/buildwiththeta/buildwiththeta/discussions): Ideal for general questions, Q&A, product use assistance, best practice discussions.
- [GitHub Issues](https://github.com/buildwiththeta/buildwiththeta/issues): Ideal for reporting bugs and problems while using Theta
- [Email Support](mailto:support@buildwiththeta.com): Ideal for reporting problems with your personal projects.
- [Discord](https://discord.gg/xNgDkZ2g6w): Ideal for sharing projects and portfolios with the community. Only for invited users.

## Supported Frameworks
- [x] Flutter: ready on [pub.dev](https://pub.dev/packages/theta).
- [ ] Swift: work in progress. See [buildwiththeta-swift](https://github.com/buildwiththeta/buildwiththeta-swift)

## Status
- [x] Alpha: Experimental. Under intense development.
- [x] Closed Beta: Still under development. Except bugs and errors.
- [x] Invite-only Beta: ready to be used in production. Expect some bugs and missing features.

Looking for an invitation? Ask on [Twitter](https://twitter.com/intent/tweet?text=Hey,%20I%27m%20looking%20for%20an%20invitation%20code%20for%20@buildwiththeta,%20can%20anyone%20help%20me%20please?%20).

Check [Releases](https://github.com/buildwiththeta/buildwiththeta/releases) to see our current status and all updates.

---

## Supporters 💙

- [@chaplaindan](https://github.com/chaplaindan)

## Contributing

See [CONTRIBUTING.md](https://github.com/buildwiththeta/buildwiththeta/blob/main/CONTRIBUTING.md) for details.

## License

Build with Theta packages are licensed under the Apache License 2.0. See [LICENSE](https://github.com/buildwiththeta/buildwiththeta/blob/main/LICENSE) for details.

## Languages supported in docs

- [en](https://docs.page/buildwiththeta/buildwiththeta/en)
- [it](https://docs.page/buildwiththeta/buildwiththeta/it)
- [es](https://docs.page/buildwiththeta/buildwiththeta/es)
- [tr](https://docs.page/buildwiththeta/buildwiththeta/tr)

## Resources

- [▶️ Video tutorial](https://www.youtube.com/watch?v=oFed0NIqBZI)
- [⚡️ Website](https://buildwiththeta.com)
- [🧑‍🏫 Documentation](https://docs.page/buildwiththeta/buildwiththeta/)
- [🐱 GitHub](https://github.com/buildwiththeta/buildwiththeta)
- [🐦 Twitter](https://twitter.com/buildwiththeta)
- [👾 Discord](https://discord.gg/xNgDkZ2g6w)

![](https://fftefqqvfkkewuokofds.supabase.co/storage/v1/object/public/theta-assets/covers/banner-email-min.png)
