# KISPE Arduino Board Manager

Install link
```
https://raw.githubusercontent.com/KISPE-Space/KISPE_BoardManager/refs/heads/main/package_KISPE_index.json
```

## SATLL_OBC - STM32 
based upon the stm32duino core supporting custom board profile for the KISPE SATLL OBC.

## SATLL_ADCS - STM32
A slightly modified version of the SATLL_OBC board to use the correct default interfaces.

## Based on
[stm32duino GitHub Page](https://github.com/stm32duino)

## Usage
Firt you will need the STM32 Cube Programmer which can be found here: https://www.st.com/en/development-tools/stm32cubeprog.html. You may also need to add the stm cube programmer CLI exe to PATH. 
In Arduino IDE, add the install link to File->Preferences->Additional boards manager URLs. Then, go to the board manager in Arduino IDE, search for KISPE, and install the KISPE STM32 boards. Then select the board you are using (SATLL_OBC or SATLL_ADCS) from the dropdown nect to the debug button. If the board does not appear there, select a different board for the correct COM port, then go to Tools->Board and choose the correct board from there.
