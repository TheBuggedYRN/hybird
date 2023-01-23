/* eslint-disable react-native/no-inline-styles */
import {ReactNode, useEffect} from 'react';
import React from 'react';
import {Image, SafeAreaView, Text} from 'react-native';
import Instabug from 'instabug-reactnative';

const App: () => ReactNode = () => {
  useEffect(() => {
    console.log('Instabug-Hybrid', 'starting from RN');
    Instabug.start('f163dafcad22d79fb3653d3b6458729e', [
      Instabug.invocationEvent.floatingButton,
    ]);
  });

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
