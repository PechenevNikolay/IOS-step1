//
//  main.m
//  homework
//
//  Created by Snoopy on 20.06.16.
//  Copyright © 2016 Kolya. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int exercise;
        NSLog(@"Выберите номер задачи 1-5:" );
        scanf("%i", &exercise);
        int gender;
        int age;
        
        if (exercise == 1) {
            NSLog(@"Выберите пол: 1 - М, 2 - Ж" );
            scanf("%i", &gender);
            NSLog(@"Введите ваш возраст:");
            scanf("%i", &age);
            if (gender == 1 && age > 18) {
                NSLog(@"Добро пожаловать в армию.");
            } else if (gender == 2) {
                NSLog(@"Равноправие не распространяется на армию.");
            } else {
                NSLog(@"Приходите попозже!");
            }
        }
        else if (exercise == 2) {
            NSLog(@"Выберите пол: 1 - М, 2 - Ж" );
            scanf("%i", &gender);
            NSLog(@"Введите ваш возраст:");
            scanf("%i", &age);
            
            if (gender == 1 && age > 65) {
                NSLog(@"Добро пожаловать на пенсию.");
            } else if (gender == 2 && age > 60) {
                NSLog(@"Добро пожаловать на пенсию.");
            } else {
                NSLog(@"Приходите попозже!");
            }
            
        } else if (exercise == 3) {
            NSLog(@"Введите тип валюты: 1 - UAH, 2 - USD" );
            scanf("%i", &gender);
            float result;
            if (gender == 1) {
                NSLog(@"Введите сумму:");
                scanf("%f", &result);
                result *= 0.0402;
                NSLog(@"Ваша сумма равняется %.02f $", result);
            } else if (gender == 2) {
                NSLog(@"Введите сумму:");
                scanf("%f", &result);
                result *= 24.85;
                NSLog(@"Ваша сумма равняется %.02f грн", result);
            } else {
                NSLog(@"Повторите попытку и выберите валюту из предложеного списка!");
            }
            
        } else if (exercise == 4) {
            NSLog(@"Введите номер месяца:");
            scanf("%i", &gender);
            if (gender == 1) {NSLog(@"Январь - зима");}
            else if (gender == 2) {NSLog(@"Февраль - зима");}
            else if (gender == 3) {NSLog(@"Март - весна");}
            else if (gender == 4) {NSLog(@"Апрель - весна");}
            else if (gender == 5) {NSLog(@"Май - весна");}
            else if (gender == 6) {NSLog(@"Июнь - лето");}
            else if (gender == 7) {NSLog(@"Июль - лето");}
            else if (gender == 8) {NSLog(@"Август - лето");}
            else if (gender == 9) {NSLog(@"Сентябрь - осень");}
            else if (gender == 10) {NSLog(@"Октябрь - осень");}
            else if (gender == 11) {NSLog(@"Ноябрь - осень");}
            else if (gender == 12) {NSLog(@"Декабрь - зима");}
            else {NSLog(@"Нет такого месяца!");}
        } else if (exercise == 5) {
            float summ;
            NSLog(@"Введите номер валюты которую хотите поменять (1 - USD, 2 - EURO, 3 - UAH):");
            scanf("%i", &gender);
            NSLog(@"Введите номер валюты на которую хотите поменять (1 - USD, 2 - EURO, 3 - UAH):");
            scanf("%i", &age);
            if (gender == age) {
                NSLog(@"Мы не меняем купюры... Выберите разные валюты");
            } else {
                NSLog(@"Введите cумму:");
                scanf("%f", &summ);
                if (gender == 1 && age == 2) {
                    // usd to euro
                    summ *= 0.9;
                    NSLog(@"Ваша сумма = %.02f EURO.", summ);
                } else if (gender == 1 && age == 3){
                    // usd to uah
                    summ *= 24.85;
                    NSLog(@"Ваша сумма = %.02f UAH.", summ);
                } else if (gender == 2 && age == 1) {
                    // euro to usd
                    summ *= 1.13;
                    NSLog(@"Ваша сумма = %.02f USD.", summ);
                } else if (gender == 2 && age == 3) {
                    // euro to uah
                    summ *= 28.17;
                    NSLog(@"Ваша сумма = %.02f UAH.", summ);
                } else if (gender == 3 && age == 1) {
                    // uah to usd
                    summ /= 24.85;
                    NSLog(@"Ваша сумма = %.02f EURO.", summ);
                } else if (gender == 3 && age == 2) {
                    // uah to euro
                    summ /= 28.17;
                    NSLog(@"Ваша сумма = %.02f EURO.", summ);
                } else {
                    NSLog(@"Выберите один из предложенных вариантов валют.");
                }
            }
            

        }
        else {NSLog(@"Было задано 5 заданий, попробуйте еще раз выбрать задание 1-5");}
        
        
        
    }
    return 0;
}
