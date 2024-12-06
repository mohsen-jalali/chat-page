# Chat Application

## Overview
This is a Flutter-based chat application using BLoC (Business Logic Component) state management. The chat page is designed with smooth animations, user switching capabilities, and an intuitive messaging interface.

## Key Features
- Real-time messaging
- Animated chat list with smooth transitions
- User switching functionality
- Timer message option

## Project Structure
The chat page is built using Flutter and implements several key components:
- State Management: BLoC (flutter_bloc)
- UI Components:
    - `ChatAppBarWidget`: Displays current user and allows user switching
    - `ChatInputWidget`: Provides message input and send functionality
    - `ChatBubbleWidget`: Renders individual chat messages with animations

## Technical Highlights
- Uses `AnimatedList` for dynamic list rendering
- Implements custom scroll behavior for keyboard interactions
- Supports message insertion and deletion with animations
- Utilizes `ScrollController` for precise list navigation

## Getting Started

### Prerequisites
- Flutter SDK
- Dart SDK

### Installation
1. Clone the repository
```bash
git clone https://github.com/your-username/your-repo-name.git
```

2. Navigate to the project directory
```bash
cd your-repo-name
```

3. Install dependencies
```bash
flutter pub get
```

4. Run the application
```bash
flutter run
```

## Key Components

### ChatPage
The main chat interface that includes:
- Animated chat list
- Automatic scrolling to latest message
- User switching functionality

### State Management
Implemented using BLoC (Cubit):
- `ChatPageCubit`: Manages chat state
- Handles message sending, deletion, and user switching
- Maintains message list and current user state

## Customization
You can easily customize:
- Chat bubble styling
- User switching logic
- Message input behavior
