import {ReactNode, useEffect} from 'react';
import React from 'react';
import {SafeAreaView, Text} from 'react-native';
import Instabug from 'instabug-reactnative';

const App: () => ReactNode = () => {
  useEffect(() => {
    console.log('Instabug-Hybrid', 'starting from RN');
    Instabug.start('f163dafcad22d79fb3653d3b6458729e', [
      Instabug.invocationEvent.floatingButton,
    ]);
  });

  return (
    <SafeAreaView>
      <Text>React Native App</Text>
    </SafeAreaView>
  );
};

export default App;
