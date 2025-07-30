# Drop Me - Simulate Onboarding 

A beautifully crafted Flutter onboarding application for Drop Me, introducing users to the innovative Reverse Vending Machine (RVM) recycling system. This app provides an engaging first-time user experience with smooth animations and intuitive navigation.

## Overview
This Flutter application delivers a comprehensive onboarding experience for Drop Me users. The app guides users through the key features of the RVM system, from understanding the concept to earning rewards, with a polished and interactive user interface.

## System Design Architecture 🎨
The project follows **Clean Architecture** principles with the following structure:

```
lib/
├── core/
│   ├── helpers/
│   │   └── spacing.dart             # Responsive spacing helpers
│   ├── theming/
│   │   ├── color_manger.dart        # App color constants
│   │   ├── font_weight_helper.dart  # Typography weights
│   │   └── text_styles.dart         # Reusable text styles
│   └── widgets/
│       └── app_text_button.dart     # Custom button component
├── features/
│   └── onboarding/
│       ├── model/
│       │   └── onboarding_model.dart    # Onboarding data model
│       └── ui/
│           ├── onboarding_screen.dart           # Main onboarding screen
│           └── widgets/
│               ├── onboarding_content.dart          # Individual page content
│               └── onboarding_page_view_builder.dart # PageView builder
└── main.dart
```

## Installation Steps 📥

1. **Clone the repository**
   ```bash
   git clone https://github.com/ibrahimagdy/Task3_Drop-Me-Onboarding.git
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

## Demo 📸

https://github.com/user-attachments/assets/a66ee991-aefb-4d9f-8987-e28c6ed7b6ec


## Screenshots 📲

<img width="461" height="873" alt="Screenshot 2025-07-30 at 12 03 37 PM" src="https://github.com/user-attachments/assets/c1e2a890-fff1-4c75-bc92-5c391abac3e1" />
<img width="471" height="873" alt="Screenshot 2025-07-30 at 12 04 03 PM" src="https://github.com/user-attachments/assets/3037aab1-054b-4cba-b681-982bb20248e5" />
<img width="473" height="873" alt="Screenshot 2025-07-30 at 12 04 23 PM" src="https://github.com/user-attachments/assets/db6900ab-bf00-4baf-89e7-27d181241d98" />


## Features 📚
- **Interactive Onboarding**: Three-step guided tour of Drop Me features
- **Smooth Page Transitions**: Fluid animations between onboarding pages
- **Visual Progress Indicators**: Dynamic dot indicators showing current page
- **Skip Functionality**: Allow users to skip the onboarding process
- **Responsive Design**: Optimized for different screen sizes using ScreenUtil
- **Clean UI/UX**: Modern design with consistent theming and typography
- **Asset Integration**: High-quality images showcasing RVM functionality

## Onboarding Flow 🔄

### Page 1: Meet the RVM
- **Visual**: Recycling machine illustration
- **Title**: "Meet the RVM"
- **Description**: Introduction to the Reverse Vending Machine concept
- **Purpose**: Familiarize users with the core recycling technology

### Page 2: Scan QR Code
- **Visual**: QR code scanning demonstration
- **Title**: "Scan QR Code"
- **Description**: Instructions on how to start a recycling session
- **Purpose**: Guide users through the app interaction process

### Page 3: Earn Rewards
- **Visual**: Points and rewards illustration
- **Title**: "Earn Rewards"
- **Description**: Explanation of the reward system benefits
- **Purpose**: Motivate users with the reward mechanism
