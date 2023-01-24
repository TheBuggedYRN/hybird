/* eslint-disable react-native/no-inline-styles */
import {ReactNode} from 'react';
import React from 'react';
import {Image, SafeAreaView, Text} from 'react-native';

const App: () => ReactNode = () => {
  return (
    <SafeAreaView
      style={{
        minHeight: '100%',
        display: 'flex',
        flexDirection: 'column',
        justifyContent: 'center',
        alignItems: 'center',
      }}>
      <Image
        source={{
          uri: 'https://reactnative.dev/img/tiny_logo.png',
          height: 100,
          width: 100,
        }}
      />
      <Text style={{fontSize: 21, fontWeight: '700'}}>React Native App</Text>
    </SafeAreaView>
  );
};

export default App;
