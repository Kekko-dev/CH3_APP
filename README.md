# LumiCode App

**LumiCode** is a SwiftUI-based iOS application designed to demonstrate various user interface components and their customizations, with a focus on accessibility and dynamic user interactions. The app showcases `Buttons`, `Pickers`, and customizable settings through intuitive and modular UI design.

---

## Features

### 1. **Components**
   - **Button Customization**
     - Dynamic configuration of `ButtonStyle`, `ControlSize`, `ButtonRepeatBehavior`, and `ButtonShape`.
     - Accessibility-friendly with detailed labels, hints, and actions.
     - Integrated links to Apple’s Human Interface Guidelines for additional learning.
     - Real-time `Code Snippet` generation for customized buttons.

   - **Pickers**
     - Customizable `PickerStyle` with support for `Automatic`, `Wheel`, `Segmented`, `Menu`, and `Inline` styles.
     - Accessibility-enabled with combined elements and relevant hints.
     - `Code Snippet` generation for quick reference and implementation.

### 2. **Settings**
   - Placeholder for app-wide settings such as color schemes, font size, and more.

### 3. **Accessibility**
   - The app adheres to Apple’s Human Interface Guidelines to ensure it is usable by a wide audience, including those relying on assistive technologies.

### 4. **Code Snippets**
   - Generate and copy tailored SwiftUI code snippets for Buttons and Pickers.

### 5. **Tab Navigation**
   - Easy navigation between `Components`, `SiriAI`, and `Settings`.

---

Accessibility

Accessibility is a core focus of the app:
	•	VoiceOver Support: All interactive elements have accessibility labels, hints, and actions to guide users.
	•	Combined Accessibility Elements: Grouped elements into logical components to streamline VoiceOver navigation.
	•	Actionable Documentation Links: Quick access to relevant resources in the Apple Developer documentation.

---
 Code Snippet Feature

Both ButtonView and Pickers include a Code Snippet feature. This dynamically generates SwiftUI code based on the user’s configuration, making it easy to:
	•	Learn about various styles and behaviors.
	•	Copy and paste generated code into your projects.

 ---

 Custom Extensions

The project includes extensions to enhance usability:
	•	Dynamic Style Application:
	•	applyButtonStyle(for:)
	•	applyControlSize(for:)
	•	applyButtonRepeatBehavior(for:)
	•	applyButtonShape(for:)
	•	Picker Creation:
	•	createPicker(value:style:) for dynamically rendering Pickers based on selected styles.


 ---

 Future Enhancements

	1.	Expand Component Library:
	•	Add more SwiftUI components like Sliders, DatePickers, etc.
	2.	Theme Customization:
	•	Include light/dark mode and custom themes.
	3.	SiriAI Integration:
	•	Extend the SiriAI tab to implement AI trained with HIG and Swift documentation.
	4.	User Tutorials:
	•	Add step-by-step guidance for new users.
