# RISC_V_Pipeline

This repository implements pipelined RISC-V 32I architecture using Veriolog HDL.

# Instructions used

The instructions used are in a text file - instmem.txt under Design_Files folder. It holds the machine code of the instructions.


main :  addi x2,x0,5 

        addi x3,x0,12
        
        addi x7,x3,-9
        
        or x4,x7,x2
        
        and x5,x3,x4
        
        add x5,x5,x4
        
        beq x5,x7,end
        
        slt x4,x3,x4
        
        beq x4,x0,around
        
        addi x5,x0,0

around: slt x4,x7,x2
 		    
        add x7,x4,x5
        
        sub x7,x7,x2
        
        sw x7,84(x3)
        
        lw x2,96(x0)
        
        add x9,x2,x5
        
        jal x3,end
        
        addi x2,x0,1      

end:    add x2,x2,x9
        
        sw x2,0x20(x3)

done:   beq x2,x2,done


![image](https://github.com/Hafsa1918/RISC_V_Pipeline/assets/70684075/edebec44-d662-48c9-85ff-9b176f0411a2)


![image](https://github.com/Hafsa1918/RISC_V_Pipeline/assets/70684075/d6550425-03bc-4357-822e-146ca154c4b0)


# Simulation Results

Clock cycles 1-5

Fetch and Decode stages
![1-5 FD](https://github.com/Hafsa1918/RISC_V_Pipeline/assets/70684075/2088c337-e398-4e95-80a9-0d7ca43ee44c)

Execute stage
![1-5 E](https://github.com/Hafsa1918/RISC_V_Pipeline/assets/70684075/78dad1c8-0ac7-40e6-a4a6-d696b6f21435)

Memory and Write back stage
![1-5MW](https://github.com/Hafsa1918/RISC_V_Pipeline/assets/70684075/876f90d8-e7ec-4e31-8547-f6ad2f71d7b3)

Clock cycles 6-11

Fetch and Decode stages
![6-11 FD](https://github.com/Hafsa1918/RISC_V_Pipeline/assets/70684075/1bc40eaf-29b1-4312-8da3-63e434199f40)

Execute stage
![6-11 E](https://github.com/Hafsa1918/RISC_V_Pipeline/assets/70684075/c3d10e06-870a-43b3-a9e2-c82f3f7f9a41)

Memory and Write back stage
![6-11 MW](https://github.com/Hafsa1918/RISC_V_Pipeline/assets/70684075/356ddd4a-09e9-4ec3-968e-f562c266e4a1)

Clock cycles 11-16

Fetch and Decode stages
![11-16 FD](https://github.com/Hafsa1918/RISC_V_Pipeline/assets/70684075/7220ee78-94f6-46c3-8fe8-d139e5ce3137)

Execute stage
![11-16 E](https://github.com/Hafsa1918/RISC_V_Pipeline/assets/70684075/63c797c5-011a-41ec-b60b-d54b72944384)

Memory and Write back stage
![11-16 MW](https://github.com/Hafsa1918/RISC_V_Pipeline/assets/70684075/d0e77ab6-51cd-4268-8439-db9e16da32c6)

At the end of the instructions execution, 19 in Hexadecimal is stored at memory location 64 in Headecimal
![last](https://github.com/Hafsa1918/RISC_V_Pipeline/assets/70684075/84b7e5e8-b617-4ebc-809e-9078e39dfb44)


# Structure

Design_Files - holds all the design modules
TestBench - contains the testbench of complete RISC-V processor

# License
This repo is licensed under MIT license.





