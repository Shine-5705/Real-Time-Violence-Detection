��(
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
�
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
�
Conv3D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)(0""
paddingstring:
SAMEVALID"0
data_formatstringNDHWC:
NDHWCNCDHW"!
	dilations	list(int)	

$
DisableCopyOnRead
resource�
R
Einsum
inputs"T*N
output"T"
equationstring"
Nint(0"	
Ttype
*
Erf
x"T
y"T"
Ttype:
2
�
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
.
Identity

input"T
output"T"	
Ttype
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
�
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( ""
Ttype:
2	"
Tidxtype0:
2	
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
?
Mul
x"T
y"T
z"T"
Ttype:
2	�

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
�
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( ""
Ttype:
2	"
Tidxtype0:
2	
@
ReadVariableOp
resource
value"dtype"
dtypetype�
@
RealDiv
x"T
y"T
z"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
�
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	�
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
d
Shape

input"T&
output"out_type��out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
G
SquaredDifference
x"T
y"T
z"T"
Ttype:

2	�
�
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
2
StopGradient

input"T
output"T"	
Ttype
�
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.13.02v2.13.0-rc2-7-g1cb1a030a628��"
�(
ConstConst*
_output_shapes	
:�
*
dtype0*�(
value�(B�(�
"�(                            	   
                                                                      !   "   #   $   %   &   '   (   )   *   +   ,   -   .   /   0   1   2   3   4   5   6   7   8   9   :   ;   <   =   >   ?   @   A   B   C   D   E   F   G   H   I   J   K   L   M   N   O   P   Q   R   S   T   U   V   W   X   Y   Z   [   \   ]   ^   _   `   a   b   c   d   e   f   g   h   i   j   k   l   m   n   o   p   q   r   s   t   u   v   w   x   y   z   {   |   }   ~      �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �   �                      	  
                                               !  "  #  $  %  &  '  (  )  *  +  ,  -  .  /  0  1  2  3  4  5  6  7  8  9  :  ;  <  =  >  ?  @  A  B  C  D  E  F  G  H  I  J  K  L  M  N  O  P  Q  R  S  T  U  V  W  X  Y  Z  [  \  ]  ^  _  `  a  b  c  d  e  f  g  h  i  j  k  l  m  n  o  p  q  r  s  t  u  v  w  x  y  z  {  |  }  ~    �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                     	  
                                               !  "  #  $  %  &  '  (  )  *  +  ,  -  .  /  0  1  2  3  4  5  6  7  8  9  :  ;  <  =  >  ?  @  A  B  C  D  E  F  G  H  I  J  K  L  M  N  O  P  Q  R  S  T  U  V  W  X  Y  Z  [  \  ]  ^  _  `  a  b  c  d  e  f  g  h  i  j  k  l  m  n  o  p  q  r  s  t  u  v  w  x  y  z  {  |  }  ~    �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                     	  
                                               !  "  #  $  %  &  '  (  )  *  +  ,  -  .  /  0  1  2  3  4  5  6  7  8  9  :  ;  <  =  >  ?  @  A  B  C  D  E  F  G  H  I  J  K  L  M  N  O  P  Q  R  S  T  U  V  W  X  Y  Z  [  \  ]  ^  _  `  a  b  c  d  e  f  g  h  i  j  k  l  m  n  o  p  q  r  s  t  u  v  w  x  y  z  {  |  }  ~    �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �                     	  
                                               !  "  #  $  %  &  '  (  )  *  +  ,  -  .  /  0  1  2  3  4  5  6  7  8  9  :  ;  <  =  >  ?  @  A  B  C  D  E  F  G  H  I  J  K  L  M  N  O  P  Q  R  S  T  U  V  W  X  Y  Z  [  \  ]  ^  _  `  a  b  c  d  e  f  g  h  i  j  k  l  m  n  o  p  q  r  s  t  u  v  w  x  y  z  {  |  }  ~    �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  �  
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_2
[
count_2/Read/ReadVariableOpReadVariableOpcount_2*
_output_shapes
: *
dtype0
b
total_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_2
[
total_2/Read/ReadVariableOpReadVariableOptotal_2*
_output_shapes
: *
dtype0
b
count_3VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_3
[
count_3/Read/ReadVariableOpReadVariableOpcount_3*
_output_shapes
: *
dtype0
b
total_3VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_3
[
total_3/Read/ReadVariableOpReadVariableOptotal_3*
_output_shapes
: *
dtype0
b
count_4VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_4
[
count_4/Read/ReadVariableOpReadVariableOpcount_4*
_output_shapes
: *
dtype0
b
total_4VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_4
[
total_4/Read/ReadVariableOpReadVariableOptotal_4*
_output_shapes
: *
dtype0
~
Adam/v/dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/v/dense_4/bias
w
'Adam/v/dense_4/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_4/bias*
_output_shapes
:*
dtype0
~
Adam/m/dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/m/dense_4/bias
w
'Adam/m/dense_4/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_4/bias*
_output_shapes
:*
dtype0
�
Adam/v/dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*&
shared_nameAdam/v/dense_4/kernel

)Adam/v/dense_4/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_4/kernel*
_output_shapes

:@*
dtype0
�
Adam/m/dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*&
shared_nameAdam/m/dense_4/kernel

)Adam/m/dense_4/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_4/kernel*
_output_shapes

:@*
dtype0
�
!Adam/v/layer_normalization_4/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!Adam/v/layer_normalization_4/beta
�
5Adam/v/layer_normalization_4/beta/Read/ReadVariableOpReadVariableOp!Adam/v/layer_normalization_4/beta*
_output_shapes
:@*
dtype0
�
!Adam/m/layer_normalization_4/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!Adam/m/layer_normalization_4/beta
�
5Adam/m/layer_normalization_4/beta/Read/ReadVariableOpReadVariableOp!Adam/m/layer_normalization_4/beta*
_output_shapes
:@*
dtype0
�
"Adam/v/layer_normalization_4/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/v/layer_normalization_4/gamma
�
6Adam/v/layer_normalization_4/gamma/Read/ReadVariableOpReadVariableOp"Adam/v/layer_normalization_4/gamma*
_output_shapes
:@*
dtype0
�
"Adam/m/layer_normalization_4/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/m/layer_normalization_4/gamma
�
6Adam/m/layer_normalization_4/gamma/Read/ReadVariableOpReadVariableOp"Adam/m/layer_normalization_4/gamma*
_output_shapes
:@*
dtype0
~
Adam/v/dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/v/dense_3/bias
w
'Adam/v/dense_3/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_3/bias*
_output_shapes
:@*
dtype0
~
Adam/m/dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/m/dense_3/bias
w
'Adam/m/dense_3/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_3/bias*
_output_shapes
:@*
dtype0
�
Adam/v/dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�@*&
shared_nameAdam/v/dense_3/kernel
�
)Adam/v/dense_3/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_3/kernel*
_output_shapes
:	�@*
dtype0
�
Adam/m/dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�@*&
shared_nameAdam/m/dense_3/kernel
�
)Adam/m/dense_3/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_3/kernel*
_output_shapes
:	�@*
dtype0

Adam/v/dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*$
shared_nameAdam/v/dense_2/bias
x
'Adam/v/dense_2/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_2/bias*
_output_shapes	
:�*
dtype0

Adam/m/dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*$
shared_nameAdam/m/dense_2/bias
x
'Adam/m/dense_2/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_2/bias*
_output_shapes	
:�*
dtype0
�
Adam/v/dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@�*&
shared_nameAdam/v/dense_2/kernel
�
)Adam/v/dense_2/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_2/kernel*
_output_shapes
:	@�*
dtype0
�
Adam/m/dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@�*&
shared_nameAdam/m/dense_2/kernel
�
)Adam/m/dense_2/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_2/kernel*
_output_shapes
:	@�*
dtype0
�
!Adam/v/layer_normalization_3/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!Adam/v/layer_normalization_3/beta
�
5Adam/v/layer_normalization_3/beta/Read/ReadVariableOpReadVariableOp!Adam/v/layer_normalization_3/beta*
_output_shapes
:@*
dtype0
�
!Adam/m/layer_normalization_3/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!Adam/m/layer_normalization_3/beta
�
5Adam/m/layer_normalization_3/beta/Read/ReadVariableOpReadVariableOp!Adam/m/layer_normalization_3/beta*
_output_shapes
:@*
dtype0
�
"Adam/v/layer_normalization_3/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/v/layer_normalization_3/gamma
�
6Adam/v/layer_normalization_3/gamma/Read/ReadVariableOpReadVariableOp"Adam/v/layer_normalization_3/gamma*
_output_shapes
:@*
dtype0
�
"Adam/m/layer_normalization_3/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/m/layer_normalization_3/gamma
�
6Adam/m/layer_normalization_3/gamma/Read/ReadVariableOpReadVariableOp"Adam/m/layer_normalization_3/gamma*
_output_shapes
:@*
dtype0
�
3Adam/v/multi_head_attention_1/attention_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*D
shared_name53Adam/v/multi_head_attention_1/attention_output/bias
�
GAdam/v/multi_head_attention_1/attention_output/bias/Read/ReadVariableOpReadVariableOp3Adam/v/multi_head_attention_1/attention_output/bias*
_output_shapes
:@*
dtype0
�
3Adam/m/multi_head_attention_1/attention_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*D
shared_name53Adam/m/multi_head_attention_1/attention_output/bias
�
GAdam/m/multi_head_attention_1/attention_output/bias/Read/ReadVariableOpReadVariableOp3Adam/m/multi_head_attention_1/attention_output/bias*
_output_shapes
:@*
dtype0
�
5Adam/v/multi_head_attention_1/attention_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*F
shared_name75Adam/v/multi_head_attention_1/attention_output/kernel
�
IAdam/v/multi_head_attention_1/attention_output/kernel/Read/ReadVariableOpReadVariableOp5Adam/v/multi_head_attention_1/attention_output/kernel*"
_output_shapes
: @*
dtype0
�
5Adam/m/multi_head_attention_1/attention_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*F
shared_name75Adam/m/multi_head_attention_1/attention_output/kernel
�
IAdam/m/multi_head_attention_1/attention_output/kernel/Read/ReadVariableOpReadVariableOp5Adam/m/multi_head_attention_1/attention_output/kernel*"
_output_shapes
: @*
dtype0
�
(Adam/v/multi_head_attention_1/value/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *9
shared_name*(Adam/v/multi_head_attention_1/value/bias
�
<Adam/v/multi_head_attention_1/value/bias/Read/ReadVariableOpReadVariableOp(Adam/v/multi_head_attention_1/value/bias*
_output_shapes

: *
dtype0
�
(Adam/m/multi_head_attention_1/value/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *9
shared_name*(Adam/m/multi_head_attention_1/value/bias
�
<Adam/m/multi_head_attention_1/value/bias/Read/ReadVariableOpReadVariableOp(Adam/m/multi_head_attention_1/value/bias*
_output_shapes

: *
dtype0
�
*Adam/v/multi_head_attention_1/value/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *;
shared_name,*Adam/v/multi_head_attention_1/value/kernel
�
>Adam/v/multi_head_attention_1/value/kernel/Read/ReadVariableOpReadVariableOp*Adam/v/multi_head_attention_1/value/kernel*"
_output_shapes
:@ *
dtype0
�
*Adam/m/multi_head_attention_1/value/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *;
shared_name,*Adam/m/multi_head_attention_1/value/kernel
�
>Adam/m/multi_head_attention_1/value/kernel/Read/ReadVariableOpReadVariableOp*Adam/m/multi_head_attention_1/value/kernel*"
_output_shapes
:@ *
dtype0
�
&Adam/v/multi_head_attention_1/key/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *7
shared_name(&Adam/v/multi_head_attention_1/key/bias
�
:Adam/v/multi_head_attention_1/key/bias/Read/ReadVariableOpReadVariableOp&Adam/v/multi_head_attention_1/key/bias*
_output_shapes

: *
dtype0
�
&Adam/m/multi_head_attention_1/key/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *7
shared_name(&Adam/m/multi_head_attention_1/key/bias
�
:Adam/m/multi_head_attention_1/key/bias/Read/ReadVariableOpReadVariableOp&Adam/m/multi_head_attention_1/key/bias*
_output_shapes

: *
dtype0
�
(Adam/v/multi_head_attention_1/key/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *9
shared_name*(Adam/v/multi_head_attention_1/key/kernel
�
<Adam/v/multi_head_attention_1/key/kernel/Read/ReadVariableOpReadVariableOp(Adam/v/multi_head_attention_1/key/kernel*"
_output_shapes
:@ *
dtype0
�
(Adam/m/multi_head_attention_1/key/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *9
shared_name*(Adam/m/multi_head_attention_1/key/kernel
�
<Adam/m/multi_head_attention_1/key/kernel/Read/ReadVariableOpReadVariableOp(Adam/m/multi_head_attention_1/key/kernel*"
_output_shapes
:@ *
dtype0
�
(Adam/v/multi_head_attention_1/query/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *9
shared_name*(Adam/v/multi_head_attention_1/query/bias
�
<Adam/v/multi_head_attention_1/query/bias/Read/ReadVariableOpReadVariableOp(Adam/v/multi_head_attention_1/query/bias*
_output_shapes

: *
dtype0
�
(Adam/m/multi_head_attention_1/query/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *9
shared_name*(Adam/m/multi_head_attention_1/query/bias
�
<Adam/m/multi_head_attention_1/query/bias/Read/ReadVariableOpReadVariableOp(Adam/m/multi_head_attention_1/query/bias*
_output_shapes

: *
dtype0
�
*Adam/v/multi_head_attention_1/query/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *;
shared_name,*Adam/v/multi_head_attention_1/query/kernel
�
>Adam/v/multi_head_attention_1/query/kernel/Read/ReadVariableOpReadVariableOp*Adam/v/multi_head_attention_1/query/kernel*"
_output_shapes
:@ *
dtype0
�
*Adam/m/multi_head_attention_1/query/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *;
shared_name,*Adam/m/multi_head_attention_1/query/kernel
�
>Adam/m/multi_head_attention_1/query/kernel/Read/ReadVariableOpReadVariableOp*Adam/m/multi_head_attention_1/query/kernel*"
_output_shapes
:@ *
dtype0
�
!Adam/v/layer_normalization_2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!Adam/v/layer_normalization_2/beta
�
5Adam/v/layer_normalization_2/beta/Read/ReadVariableOpReadVariableOp!Adam/v/layer_normalization_2/beta*
_output_shapes
:@*
dtype0
�
!Adam/m/layer_normalization_2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!Adam/m/layer_normalization_2/beta
�
5Adam/m/layer_normalization_2/beta/Read/ReadVariableOpReadVariableOp!Adam/m/layer_normalization_2/beta*
_output_shapes
:@*
dtype0
�
"Adam/v/layer_normalization_2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/v/layer_normalization_2/gamma
�
6Adam/v/layer_normalization_2/gamma/Read/ReadVariableOpReadVariableOp"Adam/v/layer_normalization_2/gamma*
_output_shapes
:@*
dtype0
�
"Adam/m/layer_normalization_2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/m/layer_normalization_2/gamma
�
6Adam/m/layer_normalization_2/gamma/Read/ReadVariableOpReadVariableOp"Adam/m/layer_normalization_2/gamma*
_output_shapes
:@*
dtype0
~
Adam/v/dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/v/dense_1/bias
w
'Adam/v/dense_1/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_1/bias*
_output_shapes
:@*
dtype0
~
Adam/m/dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*$
shared_nameAdam/m/dense_1/bias
w
'Adam/m/dense_1/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_1/bias*
_output_shapes
:@*
dtype0
�
Adam/v/dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�@*&
shared_nameAdam/v/dense_1/kernel
�
)Adam/v/dense_1/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_1/kernel*
_output_shapes
:	�@*
dtype0
�
Adam/m/dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�@*&
shared_nameAdam/m/dense_1/kernel
�
)Adam/m/dense_1/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_1/kernel*
_output_shapes
:	�@*
dtype0
{
Adam/v/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*"
shared_nameAdam/v/dense/bias
t
%Adam/v/dense/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense/bias*
_output_shapes	
:�*
dtype0
{
Adam/m/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*"
shared_nameAdam/m/dense/bias
t
%Adam/m/dense/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense/bias*
_output_shapes	
:�*
dtype0
�
Adam/v/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@�*$
shared_nameAdam/v/dense/kernel
|
'Adam/v/dense/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense/kernel*
_output_shapes
:	@�*
dtype0
�
Adam/m/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@�*$
shared_nameAdam/m/dense/kernel
|
'Adam/m/dense/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense/kernel*
_output_shapes
:	@�*
dtype0
�
!Adam/v/layer_normalization_1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!Adam/v/layer_normalization_1/beta
�
5Adam/v/layer_normalization_1/beta/Read/ReadVariableOpReadVariableOp!Adam/v/layer_normalization_1/beta*
_output_shapes
:@*
dtype0
�
!Adam/m/layer_normalization_1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*2
shared_name#!Adam/m/layer_normalization_1/beta
�
5Adam/m/layer_normalization_1/beta/Read/ReadVariableOpReadVariableOp!Adam/m/layer_normalization_1/beta*
_output_shapes
:@*
dtype0
�
"Adam/v/layer_normalization_1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/v/layer_normalization_1/gamma
�
6Adam/v/layer_normalization_1/gamma/Read/ReadVariableOpReadVariableOp"Adam/v/layer_normalization_1/gamma*
_output_shapes
:@*
dtype0
�
"Adam/m/layer_normalization_1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/m/layer_normalization_1/gamma
�
6Adam/m/layer_normalization_1/gamma/Read/ReadVariableOpReadVariableOp"Adam/m/layer_normalization_1/gamma*
_output_shapes
:@*
dtype0
�
1Adam/v/multi_head_attention/attention_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*B
shared_name31Adam/v/multi_head_attention/attention_output/bias
�
EAdam/v/multi_head_attention/attention_output/bias/Read/ReadVariableOpReadVariableOp1Adam/v/multi_head_attention/attention_output/bias*
_output_shapes
:@*
dtype0
�
1Adam/m/multi_head_attention/attention_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*B
shared_name31Adam/m/multi_head_attention/attention_output/bias
�
EAdam/m/multi_head_attention/attention_output/bias/Read/ReadVariableOpReadVariableOp1Adam/m/multi_head_attention/attention_output/bias*
_output_shapes
:@*
dtype0
�
3Adam/v/multi_head_attention/attention_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*D
shared_name53Adam/v/multi_head_attention/attention_output/kernel
�
GAdam/v/multi_head_attention/attention_output/kernel/Read/ReadVariableOpReadVariableOp3Adam/v/multi_head_attention/attention_output/kernel*"
_output_shapes
: @*
dtype0
�
3Adam/m/multi_head_attention/attention_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*D
shared_name53Adam/m/multi_head_attention/attention_output/kernel
�
GAdam/m/multi_head_attention/attention_output/kernel/Read/ReadVariableOpReadVariableOp3Adam/m/multi_head_attention/attention_output/kernel*"
_output_shapes
: @*
dtype0
�
&Adam/v/multi_head_attention/value/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *7
shared_name(&Adam/v/multi_head_attention/value/bias
�
:Adam/v/multi_head_attention/value/bias/Read/ReadVariableOpReadVariableOp&Adam/v/multi_head_attention/value/bias*
_output_shapes

: *
dtype0
�
&Adam/m/multi_head_attention/value/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *7
shared_name(&Adam/m/multi_head_attention/value/bias
�
:Adam/m/multi_head_attention/value/bias/Read/ReadVariableOpReadVariableOp&Adam/m/multi_head_attention/value/bias*
_output_shapes

: *
dtype0
�
(Adam/v/multi_head_attention/value/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *9
shared_name*(Adam/v/multi_head_attention/value/kernel
�
<Adam/v/multi_head_attention/value/kernel/Read/ReadVariableOpReadVariableOp(Adam/v/multi_head_attention/value/kernel*"
_output_shapes
:@ *
dtype0
�
(Adam/m/multi_head_attention/value/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *9
shared_name*(Adam/m/multi_head_attention/value/kernel
�
<Adam/m/multi_head_attention/value/kernel/Read/ReadVariableOpReadVariableOp(Adam/m/multi_head_attention/value/kernel*"
_output_shapes
:@ *
dtype0
�
$Adam/v/multi_head_attention/key/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *5
shared_name&$Adam/v/multi_head_attention/key/bias
�
8Adam/v/multi_head_attention/key/bias/Read/ReadVariableOpReadVariableOp$Adam/v/multi_head_attention/key/bias*
_output_shapes

: *
dtype0
�
$Adam/m/multi_head_attention/key/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *5
shared_name&$Adam/m/multi_head_attention/key/bias
�
8Adam/m/multi_head_attention/key/bias/Read/ReadVariableOpReadVariableOp$Adam/m/multi_head_attention/key/bias*
_output_shapes

: *
dtype0
�
&Adam/v/multi_head_attention/key/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *7
shared_name(&Adam/v/multi_head_attention/key/kernel
�
:Adam/v/multi_head_attention/key/kernel/Read/ReadVariableOpReadVariableOp&Adam/v/multi_head_attention/key/kernel*"
_output_shapes
:@ *
dtype0
�
&Adam/m/multi_head_attention/key/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *7
shared_name(&Adam/m/multi_head_attention/key/kernel
�
:Adam/m/multi_head_attention/key/kernel/Read/ReadVariableOpReadVariableOp&Adam/m/multi_head_attention/key/kernel*"
_output_shapes
:@ *
dtype0
�
&Adam/v/multi_head_attention/query/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *7
shared_name(&Adam/v/multi_head_attention/query/bias
�
:Adam/v/multi_head_attention/query/bias/Read/ReadVariableOpReadVariableOp&Adam/v/multi_head_attention/query/bias*
_output_shapes

: *
dtype0
�
&Adam/m/multi_head_attention/query/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *7
shared_name(&Adam/m/multi_head_attention/query/bias
�
:Adam/m/multi_head_attention/query/bias/Read/ReadVariableOpReadVariableOp&Adam/m/multi_head_attention/query/bias*
_output_shapes

: *
dtype0
�
(Adam/v/multi_head_attention/query/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *9
shared_name*(Adam/v/multi_head_attention/query/kernel
�
<Adam/v/multi_head_attention/query/kernel/Read/ReadVariableOpReadVariableOp(Adam/v/multi_head_attention/query/kernel*"
_output_shapes
:@ *
dtype0
�
(Adam/m/multi_head_attention/query/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *9
shared_name*(Adam/m/multi_head_attention/query/kernel
�
<Adam/m/multi_head_attention/query/kernel/Read/ReadVariableOpReadVariableOp(Adam/m/multi_head_attention/query/kernel*"
_output_shapes
:@ *
dtype0
�
Adam/v/layer_normalization/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*0
shared_name!Adam/v/layer_normalization/beta
�
3Adam/v/layer_normalization/beta/Read/ReadVariableOpReadVariableOpAdam/v/layer_normalization/beta*
_output_shapes
:@*
dtype0
�
Adam/m/layer_normalization/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*0
shared_name!Adam/m/layer_normalization/beta
�
3Adam/m/layer_normalization/beta/Read/ReadVariableOpReadVariableOpAdam/m/layer_normalization/beta*
_output_shapes
:@*
dtype0
�
 Adam/v/layer_normalization/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*1
shared_name" Adam/v/layer_normalization/gamma
�
4Adam/v/layer_normalization/gamma/Read/ReadVariableOpReadVariableOp Adam/v/layer_normalization/gamma*
_output_shapes
:@*
dtype0
�
 Adam/m/layer_normalization/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*1
shared_name" Adam/m/layer_normalization/gamma
�
4Adam/m/layer_normalization/gamma/Read/ReadVariableOpReadVariableOp Adam/m/layer_normalization/gamma*
_output_shapes
:@*
dtype0
�
.Adam/v/positional_encoder/embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�
@*?
shared_name0.Adam/v/positional_encoder/embedding/embeddings
�
BAdam/v/positional_encoder/embedding/embeddings/Read/ReadVariableOpReadVariableOp.Adam/v/positional_encoder/embedding/embeddings*
_output_shapes
:	�
@*
dtype0
�
.Adam/m/positional_encoder/embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�
@*?
shared_name0.Adam/m/positional_encoder/embedding/embeddings
�
BAdam/m/positional_encoder/embedding/embeddings/Read/ReadVariableOpReadVariableOp.Adam/m/positional_encoder/embedding/embeddings*
_output_shapes
:	�
@*
dtype0
�
$Adam/v/tubelet_embedding/conv3d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*5
shared_name&$Adam/v/tubelet_embedding/conv3d/bias
�
8Adam/v/tubelet_embedding/conv3d/bias/Read/ReadVariableOpReadVariableOp$Adam/v/tubelet_embedding/conv3d/bias*
_output_shapes
:@*
dtype0
�
$Adam/m/tubelet_embedding/conv3d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*5
shared_name&$Adam/m/tubelet_embedding/conv3d/bias
�
8Adam/m/tubelet_embedding/conv3d/bias/Read/ReadVariableOpReadVariableOp$Adam/m/tubelet_embedding/conv3d/bias*
_output_shapes
:@*
dtype0
�
&Adam/v/tubelet_embedding/conv3d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*7
shared_name(&Adam/v/tubelet_embedding/conv3d/kernel
�
:Adam/v/tubelet_embedding/conv3d/kernel/Read/ReadVariableOpReadVariableOp&Adam/v/tubelet_embedding/conv3d/kernel**
_output_shapes
:@*
dtype0
�
&Adam/m/tubelet_embedding/conv3d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*7
shared_name(&Adam/m/tubelet_embedding/conv3d/kernel
�
:Adam/m/tubelet_embedding/conv3d/kernel/Read/ReadVariableOpReadVariableOp&Adam/m/tubelet_embedding/conv3d/kernel**
_output_shapes
:@*
dtype0
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
p
dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_3/bias
i
 dense_3/bias/Read/ReadVariableOpReadVariableOpdense_3/bias*
_output_shapes
:@*
dtype0
y
dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�@*
shared_namedense_3/kernel
r
"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel*
_output_shapes
:	�@*
dtype0
q
dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_namedense_2/bias
j
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes	
:�*
dtype0
y
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@�*
shared_namedense_2/kernel
r
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*
_output_shapes
:	@�*
dtype0
�
,multi_head_attention_1/attention_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*=
shared_name.,multi_head_attention_1/attention_output/bias
�
@multi_head_attention_1/attention_output/bias/Read/ReadVariableOpReadVariableOp,multi_head_attention_1/attention_output/bias*
_output_shapes
:@*
dtype0
�
.multi_head_attention_1/attention_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*?
shared_name0.multi_head_attention_1/attention_output/kernel
�
Bmulti_head_attention_1/attention_output/kernel/Read/ReadVariableOpReadVariableOp.multi_head_attention_1/attention_output/kernel*"
_output_shapes
: @*
dtype0
�
!multi_head_attention_1/value/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *2
shared_name#!multi_head_attention_1/value/bias
�
5multi_head_attention_1/value/bias/Read/ReadVariableOpReadVariableOp!multi_head_attention_1/value/bias*
_output_shapes

: *
dtype0
�
#multi_head_attention_1/value/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *4
shared_name%#multi_head_attention_1/value/kernel
�
7multi_head_attention_1/value/kernel/Read/ReadVariableOpReadVariableOp#multi_head_attention_1/value/kernel*"
_output_shapes
:@ *
dtype0
�
multi_head_attention_1/key/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *0
shared_name!multi_head_attention_1/key/bias
�
3multi_head_attention_1/key/bias/Read/ReadVariableOpReadVariableOpmulti_head_attention_1/key/bias*
_output_shapes

: *
dtype0
�
!multi_head_attention_1/key/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *2
shared_name#!multi_head_attention_1/key/kernel
�
5multi_head_attention_1/key/kernel/Read/ReadVariableOpReadVariableOp!multi_head_attention_1/key/kernel*"
_output_shapes
:@ *
dtype0
�
!multi_head_attention_1/query/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *2
shared_name#!multi_head_attention_1/query/bias
�
5multi_head_attention_1/query/bias/Read/ReadVariableOpReadVariableOp!multi_head_attention_1/query/bias*
_output_shapes

: *
dtype0
�
#multi_head_attention_1/query/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *4
shared_name%#multi_head_attention_1/query/kernel
�
7multi_head_attention_1/query/kernel/Read/ReadVariableOpReadVariableOp#multi_head_attention_1/query/kernel*"
_output_shapes
:@ *
dtype0
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:@*
dtype0
y
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�@*
shared_namedense_1/kernel
r
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes
:	�@*
dtype0
m

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_name
dense/bias
f
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes	
:�*
dtype0
u
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@�*
shared_namedense/kernel
n
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes
:	@�*
dtype0
�
*multi_head_attention/attention_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*;
shared_name,*multi_head_attention/attention_output/bias
�
>multi_head_attention/attention_output/bias/Read/ReadVariableOpReadVariableOp*multi_head_attention/attention_output/bias*
_output_shapes
:@*
dtype0
�
,multi_head_attention/attention_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*=
shared_name.,multi_head_attention/attention_output/kernel
�
@multi_head_attention/attention_output/kernel/Read/ReadVariableOpReadVariableOp,multi_head_attention/attention_output/kernel*"
_output_shapes
: @*
dtype0
�
multi_head_attention/value/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *0
shared_name!multi_head_attention/value/bias
�
3multi_head_attention/value/bias/Read/ReadVariableOpReadVariableOpmulti_head_attention/value/bias*
_output_shapes

: *
dtype0
�
!multi_head_attention/value/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *2
shared_name#!multi_head_attention/value/kernel
�
5multi_head_attention/value/kernel/Read/ReadVariableOpReadVariableOp!multi_head_attention/value/kernel*"
_output_shapes
:@ *
dtype0
�
multi_head_attention/key/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *.
shared_namemulti_head_attention/key/bias
�
1multi_head_attention/key/bias/Read/ReadVariableOpReadVariableOpmulti_head_attention/key/bias*
_output_shapes

: *
dtype0
�
multi_head_attention/key/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *0
shared_name!multi_head_attention/key/kernel
�
3multi_head_attention/key/kernel/Read/ReadVariableOpReadVariableOpmulti_head_attention/key/kernel*"
_output_shapes
:@ *
dtype0
�
multi_head_attention/query/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *0
shared_name!multi_head_attention/query/bias
�
3multi_head_attention/query/bias/Read/ReadVariableOpReadVariableOpmulti_head_attention/query/bias*
_output_shapes

: *
dtype0
�
!multi_head_attention/query/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *2
shared_name#!multi_head_attention/query/kernel
�
5multi_head_attention/query/kernel/Read/ReadVariableOpReadVariableOp!multi_head_attention/query/kernel*"
_output_shapes
:@ *
dtype0
�
'positional_encoder/embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�
@*8
shared_name)'positional_encoder/embedding/embeddings
�
;positional_encoder/embedding/embeddings/Read/ReadVariableOpReadVariableOp'positional_encoder/embedding/embeddings*
_output_shapes
:	�
@*
dtype0
�
tubelet_embedding/conv3d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*.
shared_nametubelet_embedding/conv3d/bias
�
1tubelet_embedding/conv3d/bias/Read/ReadVariableOpReadVariableOptubelet_embedding/conv3d/bias*
_output_shapes
:@*
dtype0
�
tubelet_embedding/conv3d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*0
shared_name!tubelet_embedding/conv3d/kernel
�
3tubelet_embedding/conv3d/kernel/Read/ReadVariableOpReadVariableOptubelet_embedding/conv3d/kernel**
_output_shapes
:@*
dtype0
p
dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_4/bias
i
 dense_4/bias/Read/ReadVariableOpReadVariableOpdense_4/bias*
_output_shapes
:*
dtype0
x
dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*
shared_namedense_4/kernel
q
"dense_4/kernel/Read/ReadVariableOpReadVariableOpdense_4/kernel*
_output_shapes

:@*
dtype0
�
layer_normalization_4/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*+
shared_namelayer_normalization_4/beta
�
.layer_normalization_4/beta/Read/ReadVariableOpReadVariableOplayer_normalization_4/beta*
_output_shapes
:@*
dtype0
�
layer_normalization_4/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namelayer_normalization_4/gamma
�
/layer_normalization_4/gamma/Read/ReadVariableOpReadVariableOplayer_normalization_4/gamma*
_output_shapes
:@*
dtype0
�
layer_normalization_3/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*+
shared_namelayer_normalization_3/beta
�
.layer_normalization_3/beta/Read/ReadVariableOpReadVariableOplayer_normalization_3/beta*
_output_shapes
:@*
dtype0
�
layer_normalization_3/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namelayer_normalization_3/gamma
�
/layer_normalization_3/gamma/Read/ReadVariableOpReadVariableOplayer_normalization_3/gamma*
_output_shapes
:@*
dtype0
�
layer_normalization_2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*+
shared_namelayer_normalization_2/beta
�
.layer_normalization_2/beta/Read/ReadVariableOpReadVariableOplayer_normalization_2/beta*
_output_shapes
:@*
dtype0
�
layer_normalization_2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namelayer_normalization_2/gamma
�
/layer_normalization_2/gamma/Read/ReadVariableOpReadVariableOplayer_normalization_2/gamma*
_output_shapes
:@*
dtype0
�
layer_normalization_1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*+
shared_namelayer_normalization_1/beta
�
.layer_normalization_1/beta/Read/ReadVariableOpReadVariableOplayer_normalization_1/beta*
_output_shapes
:@*
dtype0
�
layer_normalization_1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namelayer_normalization_1/gamma
�
/layer_normalization_1/gamma/Read/ReadVariableOpReadVariableOplayer_normalization_1/gamma*
_output_shapes
:@*
dtype0
�
layer_normalization/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*)
shared_namelayer_normalization/beta
�
,layer_normalization/beta/Read/ReadVariableOpReadVariableOplayer_normalization/beta*
_output_shapes
:@*
dtype0
�
layer_normalization/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@**
shared_namelayer_normalization/gamma
�
-layer_normalization/gamma/Read/ReadVariableOpReadVariableOplayer_normalization/gamma*
_output_shapes
:@*
dtype0
�
serving_default_input_1Placeholder*5
_output_shapes#
!:���������*��*
dtype0**
shape!:���������*��
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1tubelet_embedding/conv3d/kerneltubelet_embedding/conv3d/biasConst'positional_encoder/embedding/embeddingslayer_normalization/gammalayer_normalization/beta!multi_head_attention/query/kernelmulti_head_attention/query/biasmulti_head_attention/key/kernelmulti_head_attention/key/bias!multi_head_attention/value/kernelmulti_head_attention/value/bias,multi_head_attention/attention_output/kernel*multi_head_attention/attention_output/biaslayer_normalization_1/gammalayer_normalization_1/betadense/kernel
dense/biasdense_1/kerneldense_1/biaslayer_normalization_2/gammalayer_normalization_2/beta#multi_head_attention_1/query/kernel!multi_head_attention_1/query/bias!multi_head_attention_1/key/kernelmulti_head_attention_1/key/bias#multi_head_attention_1/value/kernel!multi_head_attention_1/value/bias.multi_head_attention_1/attention_output/kernel,multi_head_attention_1/attention_output/biaslayer_normalization_3/gammalayer_normalization_3/betadense_2/kerneldense_2/biasdense_3/kerneldense_3/biaslayer_normalization_4/gammalayer_normalization_4/betadense_4/kerneldense_4/bias*4
Tin-
+2)*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*I
_read_only_resource_inputs+
)'	
 !"#$%&'(*-
config_proto

CPU

GPU 2J 8� *,
f'R%
#__inference_signature_wrapper_23903

NoOpNoOp
��
Const_1Const"/device:CPU:0*
_output_shapes
: *
dtype0*կ
valueʯBƯ B��
�
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer-5
layer_with_weights-4
layer-6
layer_with_weights-5
layer-7
	layer-8

layer_with_weights-6

layer-9
layer_with_weights-7
layer-10
layer-11
layer_with_weights-8
layer-12
layer_with_weights-9
layer-13
layer-14
layer_with_weights-10
layer-15
layer-16
layer_with_weights-11
layer-17
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures*
* 
�
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
*!&call_and_return_all_conditional_losses
"
projection
#flatten*
�
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses
*position_embedding*
�
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses
1axis
	2gamma
3beta*
�
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses
:_query_dense
;
_key_dense
<_value_dense
=_softmax
>_dropout_layer
?_output_dense*
�
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
D__call__
*E&call_and_return_all_conditional_losses* 
�
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
J__call__
*K&call_and_return_all_conditional_losses
Laxis
	Mgamma
Nbeta*
�
Olayer_with_weights-0
Olayer-0
Player_with_weights-1
Player-1
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
U__call__
*V&call_and_return_all_conditional_losses*
�
W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api
[__call__
*\&call_and_return_all_conditional_losses* 
�
]	variables
^trainable_variables
_regularization_losses
`	keras_api
a__call__
*b&call_and_return_all_conditional_losses
caxis
	dgamma
ebeta*
�
f	variables
gtrainable_variables
hregularization_losses
i	keras_api
j__call__
*k&call_and_return_all_conditional_losses
l_query_dense
m
_key_dense
n_value_dense
o_softmax
p_dropout_layer
q_output_dense*
�
r	variables
strainable_variables
tregularization_losses
u	keras_api
v__call__
*w&call_and_return_all_conditional_losses* 
�
x	variables
ytrainable_variables
zregularization_losses
{	keras_api
|__call__
*}&call_and_return_all_conditional_losses
~axis
	gamma
	�beta*
�
�layer_with_weights-0
�layer-0
�layer_with_weights-1
�layer-1
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias*
�
�0
�1
�2
23
34
�5
�6
�7
�8
�9
�10
�11
�12
M13
N14
�15
�16
�17
�18
d19
e20
�21
�22
�23
�24
�25
�26
�27
�28
29
�30
�31
�32
�33
�34
�35
�36
�37
�38*
�
�0
�1
�2
23
34
�5
�6
�7
�8
�9
�10
�11
�12
M13
N14
�15
�16
�17
�18
d19
e20
�21
�22
�23
�24
�25
�26
�27
�28
29
�30
�31
�32
�33
�34
�35
�36
�37
�38*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 

�	capture_2* 
�
�
_variables
�_iterations
�_learning_rate
�_index_dict
�
_momentums
�_velocities
�_update_step_xla*

�serving_default* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
!�_jit_compiled_convolution_op*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 

�0*

�0*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�
embeddings*

20
31*

20
31*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
hb
VARIABLE_VALUElayer_normalization/gamma5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUElayer_normalization/beta4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUE*
D
�0
�1
�2
�3
�4
�5
�6
�7*
D
�0
�1
�2
�3
�4
�5
�6
�7*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
@	variables
Atrainable_variables
Bregularization_losses
D__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

M0
N1*

M0
N1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
F	variables
Gtrainable_variables
Hregularization_losses
J__call__
*K&call_and_return_all_conditional_losses
&K"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
jd
VARIABLE_VALUElayer_normalization_1/gamma5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUElayer_normalization_1/beta4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUE*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias*
$
�0
�1
�2
�3*
$
�0
�1
�2
�3*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
Q	variables
Rtrainable_variables
Sregularization_losses
U__call__
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
W	variables
Xtrainable_variables
Yregularization_losses
[__call__
*\&call_and_return_all_conditional_losses
&\"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

d0
e1*

d0
e1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
]	variables
^trainable_variables
_regularization_losses
a__call__
*b&call_and_return_all_conditional_losses
&b"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
jd
VARIABLE_VALUElayer_normalization_2/gamma5layer_with_weights-6/gamma/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUElayer_normalization_2/beta4layer_with_weights-6/beta/.ATTRIBUTES/VARIABLE_VALUE*
D
�0
�1
�2
�3
�4
�5
�6
�7*
D
�0
�1
�2
�3
�4
�5
�6
�7*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
f	variables
gtrainable_variables
hregularization_losses
j__call__
*k&call_and_return_all_conditional_losses
&k"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
r	variables
strainable_variables
tregularization_losses
v__call__
*w&call_and_return_all_conditional_losses
&w"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

0
�1*

0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
x	variables
ytrainable_variables
zregularization_losses
|__call__
*}&call_and_return_all_conditional_losses
&}"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
jd
VARIABLE_VALUElayer_normalization_3/gamma5layer_with_weights-8/gamma/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUElayer_normalization_3/beta4layer_with_weights-8/beta/.ATTRIBUTES/VARIABLE_VALUE*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias*
$
�0
�1
�2
�3*
$
�0
�1
�2
�3*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
ke
VARIABLE_VALUElayer_normalization_4/gamma6layer_with_weights-10/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUElayer_normalization_4/beta5layer_with_weights-10/beta/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEdense_4/kernel7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_4/bias5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEtubelet_embedding/conv3d/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEtubelet_embedding/conv3d/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUE'positional_encoder/embedding/embeddings&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUE!multi_head_attention/query/kernel&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEmulti_head_attention/query/bias&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEmulti_head_attention/key/kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEmulti_head_attention/key/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUE!multi_head_attention/value/kernel&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEmulti_head_attention/value/bias'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE,multi_head_attention/attention_output/kernel'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUE*multi_head_attention/attention_output/bias'variables/12/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEdense/kernel'variables/15/.ATTRIBUTES/VARIABLE_VALUE*
KE
VARIABLE_VALUE
dense/bias'variables/16/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEdense_1/kernel'variables/17/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEdense_1/bias'variables/18/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUE#multi_head_attention_1/query/kernel'variables/21/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE!multi_head_attention_1/query/bias'variables/22/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE!multi_head_attention_1/key/kernel'variables/23/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEmulti_head_attention_1/key/bias'variables/24/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUE#multi_head_attention_1/value/kernel'variables/25/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUE!multi_head_attention_1/value/bias'variables/26/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE.multi_head_attention_1/attention_output/kernel'variables/27/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE,multi_head_attention_1/attention_output/bias'variables/28/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEdense_2/kernel'variables/31/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEdense_2/bias'variables/32/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEdense_3/kernel'variables/33/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEdense_3/bias'variables/34/.ATTRIBUTES/VARIABLE_VALUE*
* 
�
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17*
,
�0
�1
�2
�3
�4*
* 
* 

�	capture_2* 

�	capture_2* 

�	capture_2* 

�	capture_2* 
* 
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29
�30
�31
�32
�33
�34
�35
�36
�37
�38
�39
�40
�41
�42
�43
�44
�45
�46
�47
�48
�49
�50
�51
�52
�53
�54
�55
�56
�57
�58
�59
�60
�61
�62
�63
�64
�65
�66
�67
�68
�69
�70
�71
�72
�73
�74
�75
�76
�77
�78*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29
�30
�31
�32
�33
�34
�35
�36
�37
�38*
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29
�30
�31
�32
�33
�34
�35
�36
�37
�38*
* 

�	capture_2* 
* 

"0
#1*
* 
* 
* 
* 
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 
* 
* 
* 

*0*
* 
* 
* 

�	capture_0* 

�	capture_0* 

�0*

�0*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
.
:0
;1
<2
=3
>4
?5*
* 
* 
* 
* 
* 
* 
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
* 
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
* 
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 
* 
* 
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 

O0
P1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
.
l0
m1
n2
o3
p4
q5*
* 
* 
* 
* 
* 
* 
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
* 
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
* 
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 
* 
* 
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 

�0
�1*

�0
�1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 

�0
�1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
�	variables
�	keras_api

�total

�count*
M
�	variables
�	keras_api

�total

�count
�
_fn_kwargs*
M
�	variables
�	keras_api

�total

�count
�
_fn_kwargs*
M
�	variables
�	keras_api

�total

�count
�
_fn_kwargs*
M
�	variables
�	keras_api

�total

�count
�
_fn_kwargs*
qk
VARIABLE_VALUE&Adam/m/tubelet_embedding/conv3d/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUE&Adam/v/tubelet_embedding/conv3d/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE$Adam/m/tubelet_embedding/conv3d/bias1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE$Adam/v/tubelet_embedding/conv3d/bias1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
ys
VARIABLE_VALUE.Adam/m/positional_encoder/embedding/embeddings1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
ys
VARIABLE_VALUE.Adam/v/positional_encoder/embedding/embeddings1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUE Adam/m/layer_normalization/gamma1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUE Adam/v/layer_normalization/gamma1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUEAdam/m/layer_normalization/beta1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUEAdam/v/layer_normalization/beta2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUE(Adam/m/multi_head_attention/query/kernel2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUE(Adam/v/multi_head_attention/query/kernel2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUE&Adam/m/multi_head_attention/query/bias2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUE&Adam/v/multi_head_attention/query/bias2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUE&Adam/m/multi_head_attention/key/kernel2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUE&Adam/v/multi_head_attention/key/kernel2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUE$Adam/m/multi_head_attention/key/bias2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUE$Adam/v/multi_head_attention/key/bias2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUE(Adam/m/multi_head_attention/value/kernel2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUE(Adam/v/multi_head_attention/value/kernel2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUE&Adam/m/multi_head_attention/value/bias2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUE&Adam/v/multi_head_attention/value/bias2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE3Adam/m/multi_head_attention/attention_output/kernel2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE3Adam/v/multi_head_attention/attention_output/kernel2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE1Adam/m/multi_head_attention/attention_output/bias2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE1Adam/v/multi_head_attention/attention_output/bias2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/m/layer_normalization_1/gamma2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/v/layer_normalization_1/gamma2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!Adam/m/layer_normalization_1/beta2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!Adam/v/layer_normalization_1/beta2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/dense/kernel2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/dense/kernel2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEAdam/m/dense/bias2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEAdam/v/dense/bias2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/dense_1/kernel2optimizer/_variables/35/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/dense_1/kernel2optimizer/_variables/36/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/dense_1/bias2optimizer/_variables/37/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/dense_1/bias2optimizer/_variables/38/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/m/layer_normalization_2/gamma2optimizer/_variables/39/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/v/layer_normalization_2/gamma2optimizer/_variables/40/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!Adam/m/layer_normalization_2/beta2optimizer/_variables/41/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!Adam/v/layer_normalization_2/beta2optimizer/_variables/42/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE*Adam/m/multi_head_attention_1/query/kernel2optimizer/_variables/43/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE*Adam/v/multi_head_attention_1/query/kernel2optimizer/_variables/44/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUE(Adam/m/multi_head_attention_1/query/bias2optimizer/_variables/45/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUE(Adam/v/multi_head_attention_1/query/bias2optimizer/_variables/46/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUE(Adam/m/multi_head_attention_1/key/kernel2optimizer/_variables/47/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUE(Adam/v/multi_head_attention_1/key/kernel2optimizer/_variables/48/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUE&Adam/m/multi_head_attention_1/key/bias2optimizer/_variables/49/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUE&Adam/v/multi_head_attention_1/key/bias2optimizer/_variables/50/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE*Adam/m/multi_head_attention_1/value/kernel2optimizer/_variables/51/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE*Adam/v/multi_head_attention_1/value/kernel2optimizer/_variables/52/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUE(Adam/m/multi_head_attention_1/value/bias2optimizer/_variables/53/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUE(Adam/v/multi_head_attention_1/value/bias2optimizer/_variables/54/.ATTRIBUTES/VARIABLE_VALUE*
�{
VARIABLE_VALUE5Adam/m/multi_head_attention_1/attention_output/kernel2optimizer/_variables/55/.ATTRIBUTES/VARIABLE_VALUE*
�{
VARIABLE_VALUE5Adam/v/multi_head_attention_1/attention_output/kernel2optimizer/_variables/56/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE3Adam/m/multi_head_attention_1/attention_output/bias2optimizer/_variables/57/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE3Adam/v/multi_head_attention_1/attention_output/bias2optimizer/_variables/58/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/m/layer_normalization_3/gamma2optimizer/_variables/59/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/v/layer_normalization_3/gamma2optimizer/_variables/60/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!Adam/m/layer_normalization_3/beta2optimizer/_variables/61/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!Adam/v/layer_normalization_3/beta2optimizer/_variables/62/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/dense_2/kernel2optimizer/_variables/63/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/dense_2/kernel2optimizer/_variables/64/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/dense_2/bias2optimizer/_variables/65/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/dense_2/bias2optimizer/_variables/66/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/dense_3/kernel2optimizer/_variables/67/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/dense_3/kernel2optimizer/_variables/68/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/dense_3/bias2optimizer/_variables/69/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/dense_3/bias2optimizer/_variables/70/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/m/layer_normalization_4/gamma2optimizer/_variables/71/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE"Adam/v/layer_normalization_4/gamma2optimizer/_variables/72/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!Adam/m/layer_normalization_4/beta2optimizer/_variables/73/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE!Adam/v/layer_normalization_4/beta2optimizer/_variables/74/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/dense_4/kernel2optimizer/_variables/75/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/dense_4/kernel2optimizer/_variables/76/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/dense_4/bias2optimizer/_variables/77/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/dense_4/bias2optimizer/_variables/78/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_44keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_44keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_34keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_34keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_24keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_24keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

�0
�1*

�	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/4/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/4/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�"
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamelayer_normalization/gammalayer_normalization/betalayer_normalization_1/gammalayer_normalization_1/betalayer_normalization_2/gammalayer_normalization_2/betalayer_normalization_3/gammalayer_normalization_3/betalayer_normalization_4/gammalayer_normalization_4/betadense_4/kerneldense_4/biastubelet_embedding/conv3d/kerneltubelet_embedding/conv3d/bias'positional_encoder/embedding/embeddings!multi_head_attention/query/kernelmulti_head_attention/query/biasmulti_head_attention/key/kernelmulti_head_attention/key/bias!multi_head_attention/value/kernelmulti_head_attention/value/bias,multi_head_attention/attention_output/kernel*multi_head_attention/attention_output/biasdense/kernel
dense/biasdense_1/kerneldense_1/bias#multi_head_attention_1/query/kernel!multi_head_attention_1/query/bias!multi_head_attention_1/key/kernelmulti_head_attention_1/key/bias#multi_head_attention_1/value/kernel!multi_head_attention_1/value/bias.multi_head_attention_1/attention_output/kernel,multi_head_attention_1/attention_output/biasdense_2/kerneldense_2/biasdense_3/kerneldense_3/bias	iterationlearning_rate&Adam/m/tubelet_embedding/conv3d/kernel&Adam/v/tubelet_embedding/conv3d/kernel$Adam/m/tubelet_embedding/conv3d/bias$Adam/v/tubelet_embedding/conv3d/bias.Adam/m/positional_encoder/embedding/embeddings.Adam/v/positional_encoder/embedding/embeddings Adam/m/layer_normalization/gamma Adam/v/layer_normalization/gammaAdam/m/layer_normalization/betaAdam/v/layer_normalization/beta(Adam/m/multi_head_attention/query/kernel(Adam/v/multi_head_attention/query/kernel&Adam/m/multi_head_attention/query/bias&Adam/v/multi_head_attention/query/bias&Adam/m/multi_head_attention/key/kernel&Adam/v/multi_head_attention/key/kernel$Adam/m/multi_head_attention/key/bias$Adam/v/multi_head_attention/key/bias(Adam/m/multi_head_attention/value/kernel(Adam/v/multi_head_attention/value/kernel&Adam/m/multi_head_attention/value/bias&Adam/v/multi_head_attention/value/bias3Adam/m/multi_head_attention/attention_output/kernel3Adam/v/multi_head_attention/attention_output/kernel1Adam/m/multi_head_attention/attention_output/bias1Adam/v/multi_head_attention/attention_output/bias"Adam/m/layer_normalization_1/gamma"Adam/v/layer_normalization_1/gamma!Adam/m/layer_normalization_1/beta!Adam/v/layer_normalization_1/betaAdam/m/dense/kernelAdam/v/dense/kernelAdam/m/dense/biasAdam/v/dense/biasAdam/m/dense_1/kernelAdam/v/dense_1/kernelAdam/m/dense_1/biasAdam/v/dense_1/bias"Adam/m/layer_normalization_2/gamma"Adam/v/layer_normalization_2/gamma!Adam/m/layer_normalization_2/beta!Adam/v/layer_normalization_2/beta*Adam/m/multi_head_attention_1/query/kernel*Adam/v/multi_head_attention_1/query/kernel(Adam/m/multi_head_attention_1/query/bias(Adam/v/multi_head_attention_1/query/bias(Adam/m/multi_head_attention_1/key/kernel(Adam/v/multi_head_attention_1/key/kernel&Adam/m/multi_head_attention_1/key/bias&Adam/v/multi_head_attention_1/key/bias*Adam/m/multi_head_attention_1/value/kernel*Adam/v/multi_head_attention_1/value/kernel(Adam/m/multi_head_attention_1/value/bias(Adam/v/multi_head_attention_1/value/bias5Adam/m/multi_head_attention_1/attention_output/kernel5Adam/v/multi_head_attention_1/attention_output/kernel3Adam/m/multi_head_attention_1/attention_output/bias3Adam/v/multi_head_attention_1/attention_output/bias"Adam/m/layer_normalization_3/gamma"Adam/v/layer_normalization_3/gamma!Adam/m/layer_normalization_3/beta!Adam/v/layer_normalization_3/betaAdam/m/dense_2/kernelAdam/v/dense_2/kernelAdam/m/dense_2/biasAdam/v/dense_2/biasAdam/m/dense_3/kernelAdam/v/dense_3/kernelAdam/m/dense_3/biasAdam/v/dense_3/bias"Adam/m/layer_normalization_4/gamma"Adam/v/layer_normalization_4/gamma!Adam/m/layer_normalization_4/beta!Adam/v/layer_normalization_4/betaAdam/m/dense_4/kernelAdam/v/dense_4/kernelAdam/m/dense_4/biasAdam/v/dense_4/biastotal_4count_4total_3count_3total_2count_2total_1count_1totalcountConst_1*�
Tin�
�2�*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *'
f"R 
__inference__traced_save_25412
�"
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamelayer_normalization/gammalayer_normalization/betalayer_normalization_1/gammalayer_normalization_1/betalayer_normalization_2/gammalayer_normalization_2/betalayer_normalization_3/gammalayer_normalization_3/betalayer_normalization_4/gammalayer_normalization_4/betadense_4/kerneldense_4/biastubelet_embedding/conv3d/kerneltubelet_embedding/conv3d/bias'positional_encoder/embedding/embeddings!multi_head_attention/query/kernelmulti_head_attention/query/biasmulti_head_attention/key/kernelmulti_head_attention/key/bias!multi_head_attention/value/kernelmulti_head_attention/value/bias,multi_head_attention/attention_output/kernel*multi_head_attention/attention_output/biasdense/kernel
dense/biasdense_1/kerneldense_1/bias#multi_head_attention_1/query/kernel!multi_head_attention_1/query/bias!multi_head_attention_1/key/kernelmulti_head_attention_1/key/bias#multi_head_attention_1/value/kernel!multi_head_attention_1/value/bias.multi_head_attention_1/attention_output/kernel,multi_head_attention_1/attention_output/biasdense_2/kerneldense_2/biasdense_3/kerneldense_3/bias	iterationlearning_rate&Adam/m/tubelet_embedding/conv3d/kernel&Adam/v/tubelet_embedding/conv3d/kernel$Adam/m/tubelet_embedding/conv3d/bias$Adam/v/tubelet_embedding/conv3d/bias.Adam/m/positional_encoder/embedding/embeddings.Adam/v/positional_encoder/embedding/embeddings Adam/m/layer_normalization/gamma Adam/v/layer_normalization/gammaAdam/m/layer_normalization/betaAdam/v/layer_normalization/beta(Adam/m/multi_head_attention/query/kernel(Adam/v/multi_head_attention/query/kernel&Adam/m/multi_head_attention/query/bias&Adam/v/multi_head_attention/query/bias&Adam/m/multi_head_attention/key/kernel&Adam/v/multi_head_attention/key/kernel$Adam/m/multi_head_attention/key/bias$Adam/v/multi_head_attention/key/bias(Adam/m/multi_head_attention/value/kernel(Adam/v/multi_head_attention/value/kernel&Adam/m/multi_head_attention/value/bias&Adam/v/multi_head_attention/value/bias3Adam/m/multi_head_attention/attention_output/kernel3Adam/v/multi_head_attention/attention_output/kernel1Adam/m/multi_head_attention/attention_output/bias1Adam/v/multi_head_attention/attention_output/bias"Adam/m/layer_normalization_1/gamma"Adam/v/layer_normalization_1/gamma!Adam/m/layer_normalization_1/beta!Adam/v/layer_normalization_1/betaAdam/m/dense/kernelAdam/v/dense/kernelAdam/m/dense/biasAdam/v/dense/biasAdam/m/dense_1/kernelAdam/v/dense_1/kernelAdam/m/dense_1/biasAdam/v/dense_1/bias"Adam/m/layer_normalization_2/gamma"Adam/v/layer_normalization_2/gamma!Adam/m/layer_normalization_2/beta!Adam/v/layer_normalization_2/beta*Adam/m/multi_head_attention_1/query/kernel*Adam/v/multi_head_attention_1/query/kernel(Adam/m/multi_head_attention_1/query/bias(Adam/v/multi_head_attention_1/query/bias(Adam/m/multi_head_attention_1/key/kernel(Adam/v/multi_head_attention_1/key/kernel&Adam/m/multi_head_attention_1/key/bias&Adam/v/multi_head_attention_1/key/bias*Adam/m/multi_head_attention_1/value/kernel*Adam/v/multi_head_attention_1/value/kernel(Adam/m/multi_head_attention_1/value/bias(Adam/v/multi_head_attention_1/value/bias5Adam/m/multi_head_attention_1/attention_output/kernel5Adam/v/multi_head_attention_1/attention_output/kernel3Adam/m/multi_head_attention_1/attention_output/bias3Adam/v/multi_head_attention_1/attention_output/bias"Adam/m/layer_normalization_3/gamma"Adam/v/layer_normalization_3/gamma!Adam/m/layer_normalization_3/beta!Adam/v/layer_normalization_3/betaAdam/m/dense_2/kernelAdam/v/dense_2/kernelAdam/m/dense_2/biasAdam/v/dense_2/biasAdam/m/dense_3/kernelAdam/v/dense_3/kernelAdam/m/dense_3/biasAdam/v/dense_3/bias"Adam/m/layer_normalization_4/gamma"Adam/v/layer_normalization_4/gamma!Adam/m/layer_normalization_4/beta!Adam/v/layer_normalization_4/betaAdam/m/dense_4/kernelAdam/v/dense_4/kernelAdam/m/dense_4/biasAdam/v/dense_4/biastotal_4count_4total_3count_3total_2count_2total_1count_1totalcount*�
Tin�
�2�*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� **
f%R#
!__inference__traced_restore_25808��
�
j
@__inference_add_1_layer_call_and_return_conditional_losses_23107

inputs
inputs_1
identityU
addAddV2inputsinputs_1*
T0*,
_output_shapes
:����������
@T
IdentityIdentityadd:z:0*
T0*,
_output_shapes
:����������
@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:����������
@:����������
@:T P
,
_output_shapes
:����������
@
 
_user_specified_nameinputs:TP
,
_output_shapes
:����������
@
 
_user_specified_nameinputs
�!
�	
%__inference_model_layer_call_fn_23631
input_1%
unknown:@
	unknown_0:@
	unknown_1
	unknown_2:	�
@
	unknown_3:@
	unknown_4:@
	unknown_5:@ 
	unknown_6: 
	unknown_7:@ 
	unknown_8: 
	unknown_9:@ 

unknown_10:  

unknown_11: @

unknown_12:@

unknown_13:@

unknown_14:@

unknown_15:	@�

unknown_16:	�

unknown_17:	�@

unknown_18:@

unknown_19:@

unknown_20:@ 

unknown_21:@ 

unknown_22:  

unknown_23:@ 

unknown_24:  

unknown_25:@ 

unknown_26:  

unknown_27: @

unknown_28:@

unknown_29:@

unknown_30:@

unknown_31:	@�

unknown_32:	�

unknown_33:	�@

unknown_34:@

unknown_35:@

unknown_36:@

unknown_37:@

unknown_38:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38*4
Tin-
+2)*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*I
_read_only_resource_inputs+
)'	
 !"#$%&'(*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_23461o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapesx
v:���������*��: : :�
: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
5
_output_shapes#
!:���������*��
!
_user_specified_name	input_1:%!

_user_specified_name23549:%!

_user_specified_name23551:B>

_output_shapes	
:�


_user_specified_name23553:%!

_user_specified_name23555:%!

_user_specified_name23557:%!

_user_specified_name23559:%!

_user_specified_name23561:%!

_user_specified_name23563:%	!

_user_specified_name23565:%
!

_user_specified_name23567:%!

_user_specified_name23569:%!

_user_specified_name23571:%!

_user_specified_name23573:%!

_user_specified_name23575:%!

_user_specified_name23577:%!

_user_specified_name23579:%!

_user_specified_name23581:%!

_user_specified_name23583:%!

_user_specified_name23585:%!

_user_specified_name23587:%!

_user_specified_name23589:%!

_user_specified_name23591:%!

_user_specified_name23593:%!

_user_specified_name23595:%!

_user_specified_name23597:%!

_user_specified_name23599:%!

_user_specified_name23601:%!

_user_specified_name23603:%!

_user_specified_name23605:%!

_user_specified_name23607:%!

_user_specified_name23609:% !

_user_specified_name23611:%!!

_user_specified_name23613:%"!

_user_specified_name23615:%#!

_user_specified_name23617:%$!

_user_specified_name23619:%%!

_user_specified_name23621:%&!

_user_specified_name23623:%'!

_user_specified_name23625:%(!

_user_specified_name23627
�
�
5__inference_layer_normalization_3_layer_call_fn_24331

inputs
unknown:@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������
@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Y
fTRR
P__inference_layer_normalization_3_layer_call_and_return_conditional_losses_23223t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:����������
@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������
@: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:����������
@
 
_user_specified_nameinputs:%!

_user_specified_name24325:%!

_user_specified_name24327
�
Q
%__inference_add_2_layer_call_fn_24316
inputs_0
inputs_1
identity�
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������
@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_add_2_layer_call_and_return_conditional_losses_23200e
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:����������
@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:����������
@:����������
@:V R
,
_output_shapes
:����������
@
"
_user_specified_name
inputs_0:VR
,
_output_shapes
:����������
@
"
_user_specified_name
inputs_1
� 
�	
#__inference_signature_wrapper_23903
input_1%
unknown:@
	unknown_0:@
	unknown_1
	unknown_2:	�
@
	unknown_3:@
	unknown_4:@
	unknown_5:@ 
	unknown_6: 
	unknown_7:@ 
	unknown_8: 
	unknown_9:@ 

unknown_10:  

unknown_11: @

unknown_12:@

unknown_13:@

unknown_14:@

unknown_15:	@�

unknown_16:	�

unknown_17:	�@

unknown_18:@

unknown_19:@

unknown_20:@ 

unknown_21:@ 

unknown_22:  

unknown_23:@ 

unknown_24:  

unknown_25:@ 

unknown_26:  

unknown_27: @

unknown_28:@

unknown_29:@

unknown_30:@

unknown_31:	@�

unknown_32:	�

unknown_33:	�@

unknown_34:@

unknown_35:@

unknown_36:@

unknown_37:@

unknown_38:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38*4
Tin-
+2)*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*I
_read_only_resource_inputs+
)'	
 !"#$%&'(*-
config_proto

CPU

GPU 2J 8� *)
f$R"
 __inference__wrapped_model_22623o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapesx
v:���������*��: : :�
: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
5
_output_shapes#
!:���������*��
!
_user_specified_name	input_1:%!

_user_specified_name23821:%!

_user_specified_name23823:B>

_output_shapes	
:�


_user_specified_name23825:%!

_user_specified_name23827:%!

_user_specified_name23829:%!

_user_specified_name23831:%!

_user_specified_name23833:%!

_user_specified_name23835:%	!

_user_specified_name23837:%
!

_user_specified_name23839:%!

_user_specified_name23841:%!

_user_specified_name23843:%!

_user_specified_name23845:%!

_user_specified_name23847:%!

_user_specified_name23849:%!

_user_specified_name23851:%!

_user_specified_name23853:%!

_user_specified_name23855:%!

_user_specified_name23857:%!

_user_specified_name23859:%!

_user_specified_name23861:%!

_user_specified_name23863:%!

_user_specified_name23865:%!

_user_specified_name23867:%!

_user_specified_name23869:%!

_user_specified_name23871:%!

_user_specified_name23873:%!

_user_specified_name23875:%!

_user_specified_name23877:%!

_user_specified_name23879:%!

_user_specified_name23881:% !

_user_specified_name23883:%!!

_user_specified_name23885:%"!

_user_specified_name23887:%#!

_user_specified_name23889:%$!

_user_specified_name23891:%%!

_user_specified_name23893:%&!

_user_specified_name23895:%'!

_user_specified_name23897:%(!

_user_specified_name23899
Ă
�+
 __inference__wrapped_model_22623
input_1[
=model_tubelet_embedding_conv3d_conv3d_readvariableop_resource:@L
>model_tubelet_embedding_conv3d_biasadd_readvariableop_resource:@"
model_positional_encoder_22316L
9model_positional_encoder_embedding_embedding_lookup_22318:	�
@M
?model_layer_normalization_batchnorm_mul_readvariableop_resource:@I
;model_layer_normalization_batchnorm_readvariableop_resource:@\
Fmodel_multi_head_attention_query_einsum_einsum_readvariableop_resource:@ N
<model_multi_head_attention_query_add_readvariableop_resource: Z
Dmodel_multi_head_attention_key_einsum_einsum_readvariableop_resource:@ L
:model_multi_head_attention_key_add_readvariableop_resource: \
Fmodel_multi_head_attention_value_einsum_einsum_readvariableop_resource:@ N
<model_multi_head_attention_value_add_readvariableop_resource: g
Qmodel_multi_head_attention_attention_output_einsum_einsum_readvariableop_resource: @U
Gmodel_multi_head_attention_attention_output_add_readvariableop_resource:@O
Amodel_layer_normalization_1_batchnorm_mul_readvariableop_resource:@K
=model_layer_normalization_1_batchnorm_readvariableop_resource:@K
8model_sequential_dense_tensordot_readvariableop_resource:	@�E
6model_sequential_dense_biasadd_readvariableop_resource:	�M
:model_sequential_dense_1_tensordot_readvariableop_resource:	�@F
8model_sequential_dense_1_biasadd_readvariableop_resource:@O
Amodel_layer_normalization_2_batchnorm_mul_readvariableop_resource:@K
=model_layer_normalization_2_batchnorm_readvariableop_resource:@^
Hmodel_multi_head_attention_1_query_einsum_einsum_readvariableop_resource:@ P
>model_multi_head_attention_1_query_add_readvariableop_resource: \
Fmodel_multi_head_attention_1_key_einsum_einsum_readvariableop_resource:@ N
<model_multi_head_attention_1_key_add_readvariableop_resource: ^
Hmodel_multi_head_attention_1_value_einsum_einsum_readvariableop_resource:@ P
>model_multi_head_attention_1_value_add_readvariableop_resource: i
Smodel_multi_head_attention_1_attention_output_einsum_einsum_readvariableop_resource: @W
Imodel_multi_head_attention_1_attention_output_add_readvariableop_resource:@O
Amodel_layer_normalization_3_batchnorm_mul_readvariableop_resource:@K
=model_layer_normalization_3_batchnorm_readvariableop_resource:@O
<model_sequential_1_dense_2_tensordot_readvariableop_resource:	@�I
:model_sequential_1_dense_2_biasadd_readvariableop_resource:	�O
<model_sequential_1_dense_3_tensordot_readvariableop_resource:	�@H
:model_sequential_1_dense_3_biasadd_readvariableop_resource:@O
Amodel_layer_normalization_4_batchnorm_mul_readvariableop_resource:@K
=model_layer_normalization_4_batchnorm_readvariableop_resource:@>
,model_dense_4_matmul_readvariableop_resource:@;
-model_dense_4_biasadd_readvariableop_resource:
identity��$model/dense_4/BiasAdd/ReadVariableOp�#model/dense_4/MatMul/ReadVariableOp�2model/layer_normalization/batchnorm/ReadVariableOp�6model/layer_normalization/batchnorm/mul/ReadVariableOp�4model/layer_normalization_1/batchnorm/ReadVariableOp�8model/layer_normalization_1/batchnorm/mul/ReadVariableOp�4model/layer_normalization_2/batchnorm/ReadVariableOp�8model/layer_normalization_2/batchnorm/mul/ReadVariableOp�4model/layer_normalization_3/batchnorm/ReadVariableOp�8model/layer_normalization_3/batchnorm/mul/ReadVariableOp�4model/layer_normalization_4/batchnorm/ReadVariableOp�8model/layer_normalization_4/batchnorm/mul/ReadVariableOp�>model/multi_head_attention/attention_output/add/ReadVariableOp�Hmodel/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp�1model/multi_head_attention/key/add/ReadVariableOp�;model/multi_head_attention/key/einsum/Einsum/ReadVariableOp�3model/multi_head_attention/query/add/ReadVariableOp�=model/multi_head_attention/query/einsum/Einsum/ReadVariableOp�3model/multi_head_attention/value/add/ReadVariableOp�=model/multi_head_attention/value/einsum/Einsum/ReadVariableOp�@model/multi_head_attention_1/attention_output/add/ReadVariableOp�Jmodel/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp�3model/multi_head_attention_1/key/add/ReadVariableOp�=model/multi_head_attention_1/key/einsum/Einsum/ReadVariableOp�5model/multi_head_attention_1/query/add/ReadVariableOp�?model/multi_head_attention_1/query/einsum/Einsum/ReadVariableOp�5model/multi_head_attention_1/value/add/ReadVariableOp�?model/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp�3model/positional_encoder/embedding/embedding_lookup�-model/sequential/dense/BiasAdd/ReadVariableOp�/model/sequential/dense/Tensordot/ReadVariableOp�/model/sequential/dense_1/BiasAdd/ReadVariableOp�1model/sequential/dense_1/Tensordot/ReadVariableOp�1model/sequential_1/dense_2/BiasAdd/ReadVariableOp�3model/sequential_1/dense_2/Tensordot/ReadVariableOp�1model/sequential_1/dense_3/BiasAdd/ReadVariableOp�3model/sequential_1/dense_3/Tensordot/ReadVariableOp�5model/tubelet_embedding/conv3d/BiasAdd/ReadVariableOp�4model/tubelet_embedding/conv3d/Conv3D/ReadVariableOp�
4model/tubelet_embedding/conv3d/Conv3D/ReadVariableOpReadVariableOp=model_tubelet_embedding_conv3d_conv3d_readvariableop_resource**
_output_shapes
:@*
dtype0�
%model/tubelet_embedding/conv3d/Conv3DConv3Dinput_1<model/tubelet_embedding/conv3d/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������@*
paddingVALID*
strides	
�
5model/tubelet_embedding/conv3d/BiasAdd/ReadVariableOpReadVariableOp>model_tubelet_embedding_conv3d_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
&model/tubelet_embedding/conv3d/BiasAddBiasAdd.model/tubelet_embedding/conv3d/Conv3D:output:0=model/tubelet_embedding/conv3d/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������@�
%model/tubelet_embedding/reshape/ShapeShape/model/tubelet_embedding/conv3d/BiasAdd:output:0*
T0*
_output_shapes
::��}
3model/tubelet_embedding/reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5model/tubelet_embedding/reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5model/tubelet_embedding/reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
-model/tubelet_embedding/reshape/strided_sliceStridedSlice.model/tubelet_embedding/reshape/Shape:output:0<model/tubelet_embedding/reshape/strided_slice/stack:output:0>model/tubelet_embedding/reshape/strided_slice/stack_1:output:0>model/tubelet_embedding/reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskz
/model/tubelet_embedding/reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
���������q
/model/tubelet_embedding/reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :@�
-model/tubelet_embedding/reshape/Reshape/shapePack6model/tubelet_embedding/reshape/strided_slice:output:08model/tubelet_embedding/reshape/Reshape/shape/1:output:08model/tubelet_embedding/reshape/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:�
'model/tubelet_embedding/reshape/ReshapeReshape/model/tubelet_embedding/conv3d/BiasAdd:output:06model/tubelet_embedding/reshape/Reshape/shape:output:0*
T0*,
_output_shapes
:����������
@�
3model/positional_encoder/embedding/embedding_lookupResourceGather9model_positional_encoder_embedding_embedding_lookup_22318model_positional_encoder_22316*
Tindices0*L
_classB
@>loc:@model/positional_encoder/embedding/embedding_lookup/22318*
_output_shapes
:	�
@*
dtype0�
<model/positional_encoder/embedding/embedding_lookup/IdentityIdentity<model/positional_encoder/embedding/embedding_lookup:output:0*
T0*
_output_shapes
:	�
@�
model/positional_encoder/addAddV20model/tubelet_embedding/reshape/Reshape:output:0Emodel/positional_encoder/embedding/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:����������
@�
8model/layer_normalization/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
&model/layer_normalization/moments/meanMean model/positional_encoder/add:z:0Amodel/layer_normalization/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:����������
*
	keep_dims(�
.model/layer_normalization/moments/StopGradientStopGradient/model/layer_normalization/moments/mean:output:0*
T0*,
_output_shapes
:����������
�
3model/layer_normalization/moments/SquaredDifferenceSquaredDifference model/positional_encoder/add:z:07model/layer_normalization/moments/StopGradient:output:0*
T0*,
_output_shapes
:����������
@�
<model/layer_normalization/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
*model/layer_normalization/moments/varianceMean7model/layer_normalization/moments/SquaredDifference:z:0Emodel/layer_normalization/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:����������
*
	keep_dims(n
)model/layer_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
'model/layer_normalization/batchnorm/addAddV23model/layer_normalization/moments/variance:output:02model/layer_normalization/batchnorm/add/y:output:0*
T0*,
_output_shapes
:����������
�
)model/layer_normalization/batchnorm/RsqrtRsqrt+model/layer_normalization/batchnorm/add:z:0*
T0*,
_output_shapes
:����������
�
6model/layer_normalization/batchnorm/mul/ReadVariableOpReadVariableOp?model_layer_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype0�
'model/layer_normalization/batchnorm/mulMul-model/layer_normalization/batchnorm/Rsqrt:y:0>model/layer_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������
@�
)model/layer_normalization/batchnorm/mul_1Mul model/positional_encoder/add:z:0+model/layer_normalization/batchnorm/mul:z:0*
T0*,
_output_shapes
:����������
@�
)model/layer_normalization/batchnorm/mul_2Mul/model/layer_normalization/moments/mean:output:0+model/layer_normalization/batchnorm/mul:z:0*
T0*,
_output_shapes
:����������
@�
2model/layer_normalization/batchnorm/ReadVariableOpReadVariableOp;model_layer_normalization_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype0�
'model/layer_normalization/batchnorm/subSub:model/layer_normalization/batchnorm/ReadVariableOp:value:0-model/layer_normalization/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:����������
@�
)model/layer_normalization/batchnorm/add_1AddV2-model/layer_normalization/batchnorm/mul_1:z:0+model/layer_normalization/batchnorm/sub:z:0*
T0*,
_output_shapes
:����������
@�
=model/multi_head_attention/query/einsum/Einsum/ReadVariableOpReadVariableOpFmodel_multi_head_attention_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:@ *
dtype0�
.model/multi_head_attention/query/einsum/EinsumEinsum-model/layer_normalization/batchnorm/add_1:z:0Emodel/multi_head_attention/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:����������
 *
equationabc,cde->abde�
3model/multi_head_attention/query/add/ReadVariableOpReadVariableOp<model_multi_head_attention_query_add_readvariableop_resource*
_output_shapes

: *
dtype0�
$model/multi_head_attention/query/addAddV27model/multi_head_attention/query/einsum/Einsum:output:0;model/multi_head_attention/query/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������
 �
;model/multi_head_attention/key/einsum/Einsum/ReadVariableOpReadVariableOpDmodel_multi_head_attention_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:@ *
dtype0�
,model/multi_head_attention/key/einsum/EinsumEinsum-model/layer_normalization/batchnorm/add_1:z:0Cmodel/multi_head_attention/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:����������
 *
equationabc,cde->abde�
1model/multi_head_attention/key/add/ReadVariableOpReadVariableOp:model_multi_head_attention_key_add_readvariableop_resource*
_output_shapes

: *
dtype0�
"model/multi_head_attention/key/addAddV25model/multi_head_attention/key/einsum/Einsum:output:09model/multi_head_attention/key/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������
 �
=model/multi_head_attention/value/einsum/Einsum/ReadVariableOpReadVariableOpFmodel_multi_head_attention_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:@ *
dtype0�
.model/multi_head_attention/value/einsum/EinsumEinsum-model/layer_normalization/batchnorm/add_1:z:0Emodel/multi_head_attention/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:����������
 *
equationabc,cde->abde�
3model/multi_head_attention/value/add/ReadVariableOpReadVariableOp<model_multi_head_attention_value_add_readvariableop_resource*
_output_shapes

: *
dtype0�
$model/multi_head_attention/value/addAddV27model/multi_head_attention/value/einsum/Einsum:output:0;model/multi_head_attention/value/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������
 e
 model/multi_head_attention/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *�5>�
model/multi_head_attention/MulMul(model/multi_head_attention/query/add:z:0)model/multi_head_attention/Mul/y:output:0*
T0*0
_output_shapes
:����������
 �
(model/multi_head_attention/einsum/EinsumEinsum&model/multi_head_attention/key/add:z:0"model/multi_head_attention/Mul:z:0*
N*
T0*1
_output_shapes
:����������
�
*
equationaecd,abcd->acbe�
*model/multi_head_attention/softmax/SoftmaxSoftmax1model/multi_head_attention/einsum/Einsum:output:0*
T0*1
_output_shapes
:����������
�
�
+model/multi_head_attention/dropout/IdentityIdentity4model/multi_head_attention/softmax/Softmax:softmax:0*
T0*1
_output_shapes
:����������
�
�
*model/multi_head_attention/einsum_1/EinsumEinsum4model/multi_head_attention/dropout/Identity:output:0(model/multi_head_attention/value/add:z:0*
N*
T0*0
_output_shapes
:����������
 *
equationacbe,aecd->abcd�
Hmodel/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpQmodel_multi_head_attention_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
: @*
dtype0�
9model/multi_head_attention/attention_output/einsum/EinsumEinsum3model/multi_head_attention/einsum_1/Einsum:output:0Pmodel/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:����������
@*
equationabcd,cde->abe�
>model/multi_head_attention/attention_output/add/ReadVariableOpReadVariableOpGmodel_multi_head_attention_attention_output_add_readvariableop_resource*
_output_shapes
:@*
dtype0�
/model/multi_head_attention/attention_output/addAddV2Bmodel/multi_head_attention/attention_output/einsum/Einsum:output:0Fmodel/multi_head_attention/attention_output/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������
@�
model/add/addAddV23model/multi_head_attention/attention_output/add:z:0 model/positional_encoder/add:z:0*
T0*,
_output_shapes
:����������
@�
:model/layer_normalization_1/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
(model/layer_normalization_1/moments/meanMeanmodel/add/add:z:0Cmodel/layer_normalization_1/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:����������
*
	keep_dims(�
0model/layer_normalization_1/moments/StopGradientStopGradient1model/layer_normalization_1/moments/mean:output:0*
T0*,
_output_shapes
:����������
�
5model/layer_normalization_1/moments/SquaredDifferenceSquaredDifferencemodel/add/add:z:09model/layer_normalization_1/moments/StopGradient:output:0*
T0*,
_output_shapes
:����������
@�
>model/layer_normalization_1/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
,model/layer_normalization_1/moments/varianceMean9model/layer_normalization_1/moments/SquaredDifference:z:0Gmodel/layer_normalization_1/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:����������
*
	keep_dims(p
+model/layer_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
)model/layer_normalization_1/batchnorm/addAddV25model/layer_normalization_1/moments/variance:output:04model/layer_normalization_1/batchnorm/add/y:output:0*
T0*,
_output_shapes
:����������
�
+model/layer_normalization_1/batchnorm/RsqrtRsqrt-model/layer_normalization_1/batchnorm/add:z:0*
T0*,
_output_shapes
:����������
�
8model/layer_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOpAmodel_layer_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype0�
)model/layer_normalization_1/batchnorm/mulMul/model/layer_normalization_1/batchnorm/Rsqrt:y:0@model/layer_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������
@�
+model/layer_normalization_1/batchnorm/mul_1Mulmodel/add/add:z:0-model/layer_normalization_1/batchnorm/mul:z:0*
T0*,
_output_shapes
:����������
@�
+model/layer_normalization_1/batchnorm/mul_2Mul1model/layer_normalization_1/moments/mean:output:0-model/layer_normalization_1/batchnorm/mul:z:0*
T0*,
_output_shapes
:����������
@�
4model/layer_normalization_1/batchnorm/ReadVariableOpReadVariableOp=model_layer_normalization_1_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype0�
)model/layer_normalization_1/batchnorm/subSub<model/layer_normalization_1/batchnorm/ReadVariableOp:value:0/model/layer_normalization_1/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:����������
@�
+model/layer_normalization_1/batchnorm/add_1AddV2/model/layer_normalization_1/batchnorm/mul_1:z:0-model/layer_normalization_1/batchnorm/sub:z:0*
T0*,
_output_shapes
:����������
@�
/model/sequential/dense/Tensordot/ReadVariableOpReadVariableOp8model_sequential_dense_tensordot_readvariableop_resource*
_output_shapes
:	@�*
dtype0o
%model/sequential/dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:v
%model/sequential/dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       �
&model/sequential/dense/Tensordot/ShapeShape/model/layer_normalization_1/batchnorm/add_1:z:0*
T0*
_output_shapes
::��p
.model/sequential/dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
)model/sequential/dense/Tensordot/GatherV2GatherV2/model/sequential/dense/Tensordot/Shape:output:0.model/sequential/dense/Tensordot/free:output:07model/sequential/dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:r
0model/sequential/dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
+model/sequential/dense/Tensordot/GatherV2_1GatherV2/model/sequential/dense/Tensordot/Shape:output:0.model/sequential/dense/Tensordot/axes:output:09model/sequential/dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:p
&model/sequential/dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
%model/sequential/dense/Tensordot/ProdProd2model/sequential/dense/Tensordot/GatherV2:output:0/model/sequential/dense/Tensordot/Const:output:0*
T0*
_output_shapes
: r
(model/sequential/dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
'model/sequential/dense/Tensordot/Prod_1Prod4model/sequential/dense/Tensordot/GatherV2_1:output:01model/sequential/dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: n
,model/sequential/dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
'model/sequential/dense/Tensordot/concatConcatV2.model/sequential/dense/Tensordot/free:output:0.model/sequential/dense/Tensordot/axes:output:05model/sequential/dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
&model/sequential/dense/Tensordot/stackPack.model/sequential/dense/Tensordot/Prod:output:00model/sequential/dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
*model/sequential/dense/Tensordot/transpose	Transpose/model/layer_normalization_1/batchnorm/add_1:z:00model/sequential/dense/Tensordot/concat:output:0*
T0*,
_output_shapes
:����������
@�
(model/sequential/dense/Tensordot/ReshapeReshape.model/sequential/dense/Tensordot/transpose:y:0/model/sequential/dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
'model/sequential/dense/Tensordot/MatMulMatMul1model/sequential/dense/Tensordot/Reshape:output:07model/sequential/dense/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
(model/sequential/dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�p
.model/sequential/dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
)model/sequential/dense/Tensordot/concat_1ConcatV22model/sequential/dense/Tensordot/GatherV2:output:01model/sequential/dense/Tensordot/Const_2:output:07model/sequential/dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
 model/sequential/dense/TensordotReshape1model/sequential/dense/Tensordot/MatMul:product:02model/sequential/dense/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:����������
��
-model/sequential/dense/BiasAdd/ReadVariableOpReadVariableOp6model_sequential_dense_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
model/sequential/dense/BiasAddBiasAdd)model/sequential/dense/Tensordot:output:05model/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:����������
�f
!model/sequential/dense/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
model/sequential/dense/Gelu/mulMul*model/sequential/dense/Gelu/mul/x:output:0'model/sequential/dense/BiasAdd:output:0*
T0*-
_output_shapes
:����������
�g
"model/sequential/dense/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *��?�
#model/sequential/dense/Gelu/truedivRealDiv'model/sequential/dense/BiasAdd:output:0+model/sequential/dense/Gelu/Cast/x:output:0*
T0*-
_output_shapes
:����������
��
model/sequential/dense/Gelu/ErfErf'model/sequential/dense/Gelu/truediv:z:0*
T0*-
_output_shapes
:����������
�f
!model/sequential/dense/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
model/sequential/dense/Gelu/addAddV2*model/sequential/dense/Gelu/add/x:output:0#model/sequential/dense/Gelu/Erf:y:0*
T0*-
_output_shapes
:����������
��
!model/sequential/dense/Gelu/mul_1Mul#model/sequential/dense/Gelu/mul:z:0#model/sequential/dense/Gelu/add:z:0*
T0*-
_output_shapes
:����������
��
1model/sequential/dense_1/Tensordot/ReadVariableOpReadVariableOp:model_sequential_dense_1_tensordot_readvariableop_resource*
_output_shapes
:	�@*
dtype0q
'model/sequential/dense_1/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:x
'model/sequential/dense_1/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       �
(model/sequential/dense_1/Tensordot/ShapeShape%model/sequential/dense/Gelu/mul_1:z:0*
T0*
_output_shapes
::��r
0model/sequential/dense_1/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
+model/sequential/dense_1/Tensordot/GatherV2GatherV21model/sequential/dense_1/Tensordot/Shape:output:00model/sequential/dense_1/Tensordot/free:output:09model/sequential/dense_1/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:t
2model/sequential/dense_1/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
-model/sequential/dense_1/Tensordot/GatherV2_1GatherV21model/sequential/dense_1/Tensordot/Shape:output:00model/sequential/dense_1/Tensordot/axes:output:0;model/sequential/dense_1/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:r
(model/sequential/dense_1/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
'model/sequential/dense_1/Tensordot/ProdProd4model/sequential/dense_1/Tensordot/GatherV2:output:01model/sequential/dense_1/Tensordot/Const:output:0*
T0*
_output_shapes
: t
*model/sequential/dense_1/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
)model/sequential/dense_1/Tensordot/Prod_1Prod6model/sequential/dense_1/Tensordot/GatherV2_1:output:03model/sequential/dense_1/Tensordot/Const_1:output:0*
T0*
_output_shapes
: p
.model/sequential/dense_1/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
)model/sequential/dense_1/Tensordot/concatConcatV20model/sequential/dense_1/Tensordot/free:output:00model/sequential/dense_1/Tensordot/axes:output:07model/sequential/dense_1/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
(model/sequential/dense_1/Tensordot/stackPack0model/sequential/dense_1/Tensordot/Prod:output:02model/sequential/dense_1/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
,model/sequential/dense_1/Tensordot/transpose	Transpose%model/sequential/dense/Gelu/mul_1:z:02model/sequential/dense_1/Tensordot/concat:output:0*
T0*-
_output_shapes
:����������
��
*model/sequential/dense_1/Tensordot/ReshapeReshape0model/sequential/dense_1/Tensordot/transpose:y:01model/sequential/dense_1/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
)model/sequential/dense_1/Tensordot/MatMulMatMul3model/sequential/dense_1/Tensordot/Reshape:output:09model/sequential/dense_1/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@t
*model/sequential/dense_1/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@r
0model/sequential/dense_1/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
+model/sequential/dense_1/Tensordot/concat_1ConcatV24model/sequential/dense_1/Tensordot/GatherV2:output:03model/sequential/dense_1/Tensordot/Const_2:output:09model/sequential/dense_1/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
"model/sequential/dense_1/TensordotReshape3model/sequential/dense_1/Tensordot/MatMul:product:04model/sequential/dense_1/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:����������
@�
/model/sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOp8model_sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
 model/sequential/dense_1/BiasAddBiasAdd+model/sequential/dense_1/Tensordot:output:07model/sequential/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������
@h
#model/sequential/dense_1/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
!model/sequential/dense_1/Gelu/mulMul,model/sequential/dense_1/Gelu/mul/x:output:0)model/sequential/dense_1/BiasAdd:output:0*
T0*,
_output_shapes
:����������
@i
$model/sequential/dense_1/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *��?�
%model/sequential/dense_1/Gelu/truedivRealDiv)model/sequential/dense_1/BiasAdd:output:0-model/sequential/dense_1/Gelu/Cast/x:output:0*
T0*,
_output_shapes
:����������
@�
!model/sequential/dense_1/Gelu/ErfErf)model/sequential/dense_1/Gelu/truediv:z:0*
T0*,
_output_shapes
:����������
@h
#model/sequential/dense_1/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
!model/sequential/dense_1/Gelu/addAddV2,model/sequential/dense_1/Gelu/add/x:output:0%model/sequential/dense_1/Gelu/Erf:y:0*
T0*,
_output_shapes
:����������
@�
#model/sequential/dense_1/Gelu/mul_1Mul%model/sequential/dense_1/Gelu/mul:z:0%model/sequential/dense_1/Gelu/add:z:0*
T0*,
_output_shapes
:����������
@�
model/add_1/addAddV2'model/sequential/dense_1/Gelu/mul_1:z:0model/add/add:z:0*
T0*,
_output_shapes
:����������
@�
:model/layer_normalization_2/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
(model/layer_normalization_2/moments/meanMeanmodel/add_1/add:z:0Cmodel/layer_normalization_2/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:����������
*
	keep_dims(�
0model/layer_normalization_2/moments/StopGradientStopGradient1model/layer_normalization_2/moments/mean:output:0*
T0*,
_output_shapes
:����������
�
5model/layer_normalization_2/moments/SquaredDifferenceSquaredDifferencemodel/add_1/add:z:09model/layer_normalization_2/moments/StopGradient:output:0*
T0*,
_output_shapes
:����������
@�
>model/layer_normalization_2/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
,model/layer_normalization_2/moments/varianceMean9model/layer_normalization_2/moments/SquaredDifference:z:0Gmodel/layer_normalization_2/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:����������
*
	keep_dims(p
+model/layer_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
)model/layer_normalization_2/batchnorm/addAddV25model/layer_normalization_2/moments/variance:output:04model/layer_normalization_2/batchnorm/add/y:output:0*
T0*,
_output_shapes
:����������
�
+model/layer_normalization_2/batchnorm/RsqrtRsqrt-model/layer_normalization_2/batchnorm/add:z:0*
T0*,
_output_shapes
:����������
�
8model/layer_normalization_2/batchnorm/mul/ReadVariableOpReadVariableOpAmodel_layer_normalization_2_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype0�
)model/layer_normalization_2/batchnorm/mulMul/model/layer_normalization_2/batchnorm/Rsqrt:y:0@model/layer_normalization_2/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������
@�
+model/layer_normalization_2/batchnorm/mul_1Mulmodel/add_1/add:z:0-model/layer_normalization_2/batchnorm/mul:z:0*
T0*,
_output_shapes
:����������
@�
+model/layer_normalization_2/batchnorm/mul_2Mul1model/layer_normalization_2/moments/mean:output:0-model/layer_normalization_2/batchnorm/mul:z:0*
T0*,
_output_shapes
:����������
@�
4model/layer_normalization_2/batchnorm/ReadVariableOpReadVariableOp=model_layer_normalization_2_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype0�
)model/layer_normalization_2/batchnorm/subSub<model/layer_normalization_2/batchnorm/ReadVariableOp:value:0/model/layer_normalization_2/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:����������
@�
+model/layer_normalization_2/batchnorm/add_1AddV2/model/layer_normalization_2/batchnorm/mul_1:z:0-model/layer_normalization_2/batchnorm/sub:z:0*
T0*,
_output_shapes
:����������
@�
?model/multi_head_attention_1/query/einsum/Einsum/ReadVariableOpReadVariableOpHmodel_multi_head_attention_1_query_einsum_einsum_readvariableop_resource*"
_output_shapes
:@ *
dtype0�
0model/multi_head_attention_1/query/einsum/EinsumEinsum/model/layer_normalization_2/batchnorm/add_1:z:0Gmodel/multi_head_attention_1/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:����������
 *
equationabc,cde->abde�
5model/multi_head_attention_1/query/add/ReadVariableOpReadVariableOp>model_multi_head_attention_1_query_add_readvariableop_resource*
_output_shapes

: *
dtype0�
&model/multi_head_attention_1/query/addAddV29model/multi_head_attention_1/query/einsum/Einsum:output:0=model/multi_head_attention_1/query/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������
 �
=model/multi_head_attention_1/key/einsum/Einsum/ReadVariableOpReadVariableOpFmodel_multi_head_attention_1_key_einsum_einsum_readvariableop_resource*"
_output_shapes
:@ *
dtype0�
.model/multi_head_attention_1/key/einsum/EinsumEinsum/model/layer_normalization_2/batchnorm/add_1:z:0Emodel/multi_head_attention_1/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:����������
 *
equationabc,cde->abde�
3model/multi_head_attention_1/key/add/ReadVariableOpReadVariableOp<model_multi_head_attention_1_key_add_readvariableop_resource*
_output_shapes

: *
dtype0�
$model/multi_head_attention_1/key/addAddV27model/multi_head_attention_1/key/einsum/Einsum:output:0;model/multi_head_attention_1/key/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������
 �
?model/multi_head_attention_1/value/einsum/Einsum/ReadVariableOpReadVariableOpHmodel_multi_head_attention_1_value_einsum_einsum_readvariableop_resource*"
_output_shapes
:@ *
dtype0�
0model/multi_head_attention_1/value/einsum/EinsumEinsum/model/layer_normalization_2/batchnorm/add_1:z:0Gmodel/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:����������
 *
equationabc,cde->abde�
5model/multi_head_attention_1/value/add/ReadVariableOpReadVariableOp>model_multi_head_attention_1_value_add_readvariableop_resource*
_output_shapes

: *
dtype0�
&model/multi_head_attention_1/value/addAddV29model/multi_head_attention_1/value/einsum/Einsum:output:0=model/multi_head_attention_1/value/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������
 g
"model/multi_head_attention_1/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *�5>�
 model/multi_head_attention_1/MulMul*model/multi_head_attention_1/query/add:z:0+model/multi_head_attention_1/Mul/y:output:0*
T0*0
_output_shapes
:����������
 �
*model/multi_head_attention_1/einsum/EinsumEinsum(model/multi_head_attention_1/key/add:z:0$model/multi_head_attention_1/Mul:z:0*
N*
T0*1
_output_shapes
:����������
�
*
equationaecd,abcd->acbe�
,model/multi_head_attention_1/softmax/SoftmaxSoftmax3model/multi_head_attention_1/einsum/Einsum:output:0*
T0*1
_output_shapes
:����������
�
�
-model/multi_head_attention_1/dropout/IdentityIdentity6model/multi_head_attention_1/softmax/Softmax:softmax:0*
T0*1
_output_shapes
:����������
�
�
,model/multi_head_attention_1/einsum_1/EinsumEinsum6model/multi_head_attention_1/dropout/Identity:output:0*model/multi_head_attention_1/value/add:z:0*
N*
T0*0
_output_shapes
:����������
 *
equationacbe,aecd->abcd�
Jmodel/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpSmodel_multi_head_attention_1_attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
: @*
dtype0�
;model/multi_head_attention_1/attention_output/einsum/EinsumEinsum5model/multi_head_attention_1/einsum_1/Einsum:output:0Rmodel/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:����������
@*
equationabcd,cde->abe�
@model/multi_head_attention_1/attention_output/add/ReadVariableOpReadVariableOpImodel_multi_head_attention_1_attention_output_add_readvariableop_resource*
_output_shapes
:@*
dtype0�
1model/multi_head_attention_1/attention_output/addAddV2Dmodel/multi_head_attention_1/attention_output/einsum/Einsum:output:0Hmodel/multi_head_attention_1/attention_output/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������
@�
model/add_2/addAddV25model/multi_head_attention_1/attention_output/add:z:0model/add_1/add:z:0*
T0*,
_output_shapes
:����������
@�
:model/layer_normalization_3/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
(model/layer_normalization_3/moments/meanMeanmodel/add_2/add:z:0Cmodel/layer_normalization_3/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:����������
*
	keep_dims(�
0model/layer_normalization_3/moments/StopGradientStopGradient1model/layer_normalization_3/moments/mean:output:0*
T0*,
_output_shapes
:����������
�
5model/layer_normalization_3/moments/SquaredDifferenceSquaredDifferencemodel/add_2/add:z:09model/layer_normalization_3/moments/StopGradient:output:0*
T0*,
_output_shapes
:����������
@�
>model/layer_normalization_3/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
,model/layer_normalization_3/moments/varianceMean9model/layer_normalization_3/moments/SquaredDifference:z:0Gmodel/layer_normalization_3/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:����������
*
	keep_dims(p
+model/layer_normalization_3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
)model/layer_normalization_3/batchnorm/addAddV25model/layer_normalization_3/moments/variance:output:04model/layer_normalization_3/batchnorm/add/y:output:0*
T0*,
_output_shapes
:����������
�
+model/layer_normalization_3/batchnorm/RsqrtRsqrt-model/layer_normalization_3/batchnorm/add:z:0*
T0*,
_output_shapes
:����������
�
8model/layer_normalization_3/batchnorm/mul/ReadVariableOpReadVariableOpAmodel_layer_normalization_3_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype0�
)model/layer_normalization_3/batchnorm/mulMul/model/layer_normalization_3/batchnorm/Rsqrt:y:0@model/layer_normalization_3/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������
@�
+model/layer_normalization_3/batchnorm/mul_1Mulmodel/add_2/add:z:0-model/layer_normalization_3/batchnorm/mul:z:0*
T0*,
_output_shapes
:����������
@�
+model/layer_normalization_3/batchnorm/mul_2Mul1model/layer_normalization_3/moments/mean:output:0-model/layer_normalization_3/batchnorm/mul:z:0*
T0*,
_output_shapes
:����������
@�
4model/layer_normalization_3/batchnorm/ReadVariableOpReadVariableOp=model_layer_normalization_3_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype0�
)model/layer_normalization_3/batchnorm/subSub<model/layer_normalization_3/batchnorm/ReadVariableOp:value:0/model/layer_normalization_3/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:����������
@�
+model/layer_normalization_3/batchnorm/add_1AddV2/model/layer_normalization_3/batchnorm/mul_1:z:0-model/layer_normalization_3/batchnorm/sub:z:0*
T0*,
_output_shapes
:����������
@�
3model/sequential_1/dense_2/Tensordot/ReadVariableOpReadVariableOp<model_sequential_1_dense_2_tensordot_readvariableop_resource*
_output_shapes
:	@�*
dtype0s
)model/sequential_1/dense_2/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:z
)model/sequential_1/dense_2/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       �
*model/sequential_1/dense_2/Tensordot/ShapeShape/model/layer_normalization_3/batchnorm/add_1:z:0*
T0*
_output_shapes
::��t
2model/sequential_1/dense_2/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
-model/sequential_1/dense_2/Tensordot/GatherV2GatherV23model/sequential_1/dense_2/Tensordot/Shape:output:02model/sequential_1/dense_2/Tensordot/free:output:0;model/sequential_1/dense_2/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:v
4model/sequential_1/dense_2/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
/model/sequential_1/dense_2/Tensordot/GatherV2_1GatherV23model/sequential_1/dense_2/Tensordot/Shape:output:02model/sequential_1/dense_2/Tensordot/axes:output:0=model/sequential_1/dense_2/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:t
*model/sequential_1/dense_2/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
)model/sequential_1/dense_2/Tensordot/ProdProd6model/sequential_1/dense_2/Tensordot/GatherV2:output:03model/sequential_1/dense_2/Tensordot/Const:output:0*
T0*
_output_shapes
: v
,model/sequential_1/dense_2/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
+model/sequential_1/dense_2/Tensordot/Prod_1Prod8model/sequential_1/dense_2/Tensordot/GatherV2_1:output:05model/sequential_1/dense_2/Tensordot/Const_1:output:0*
T0*
_output_shapes
: r
0model/sequential_1/dense_2/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
+model/sequential_1/dense_2/Tensordot/concatConcatV22model/sequential_1/dense_2/Tensordot/free:output:02model/sequential_1/dense_2/Tensordot/axes:output:09model/sequential_1/dense_2/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
*model/sequential_1/dense_2/Tensordot/stackPack2model/sequential_1/dense_2/Tensordot/Prod:output:04model/sequential_1/dense_2/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
.model/sequential_1/dense_2/Tensordot/transpose	Transpose/model/layer_normalization_3/batchnorm/add_1:z:04model/sequential_1/dense_2/Tensordot/concat:output:0*
T0*,
_output_shapes
:����������
@�
,model/sequential_1/dense_2/Tensordot/ReshapeReshape2model/sequential_1/dense_2/Tensordot/transpose:y:03model/sequential_1/dense_2/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
+model/sequential_1/dense_2/Tensordot/MatMulMatMul5model/sequential_1/dense_2/Tensordot/Reshape:output:0;model/sequential_1/dense_2/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������w
,model/sequential_1/dense_2/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�t
2model/sequential_1/dense_2/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
-model/sequential_1/dense_2/Tensordot/concat_1ConcatV26model/sequential_1/dense_2/Tensordot/GatherV2:output:05model/sequential_1/dense_2/Tensordot/Const_2:output:0;model/sequential_1/dense_2/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
$model/sequential_1/dense_2/TensordotReshape5model/sequential_1/dense_2/Tensordot/MatMul:product:06model/sequential_1/dense_2/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:����������
��
1model/sequential_1/dense_2/BiasAdd/ReadVariableOpReadVariableOp:model_sequential_1_dense_2_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
"model/sequential_1/dense_2/BiasAddBiasAdd-model/sequential_1/dense_2/Tensordot:output:09model/sequential_1/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:����������
�j
%model/sequential_1/dense_2/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
#model/sequential_1/dense_2/Gelu/mulMul.model/sequential_1/dense_2/Gelu/mul/x:output:0+model/sequential_1/dense_2/BiasAdd:output:0*
T0*-
_output_shapes
:����������
�k
&model/sequential_1/dense_2/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *��?�
'model/sequential_1/dense_2/Gelu/truedivRealDiv+model/sequential_1/dense_2/BiasAdd:output:0/model/sequential_1/dense_2/Gelu/Cast/x:output:0*
T0*-
_output_shapes
:����������
��
#model/sequential_1/dense_2/Gelu/ErfErf+model/sequential_1/dense_2/Gelu/truediv:z:0*
T0*-
_output_shapes
:����������
�j
%model/sequential_1/dense_2/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
#model/sequential_1/dense_2/Gelu/addAddV2.model/sequential_1/dense_2/Gelu/add/x:output:0'model/sequential_1/dense_2/Gelu/Erf:y:0*
T0*-
_output_shapes
:����������
��
%model/sequential_1/dense_2/Gelu/mul_1Mul'model/sequential_1/dense_2/Gelu/mul:z:0'model/sequential_1/dense_2/Gelu/add:z:0*
T0*-
_output_shapes
:����������
��
3model/sequential_1/dense_3/Tensordot/ReadVariableOpReadVariableOp<model_sequential_1_dense_3_tensordot_readvariableop_resource*
_output_shapes
:	�@*
dtype0s
)model/sequential_1/dense_3/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:z
)model/sequential_1/dense_3/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       �
*model/sequential_1/dense_3/Tensordot/ShapeShape)model/sequential_1/dense_2/Gelu/mul_1:z:0*
T0*
_output_shapes
::��t
2model/sequential_1/dense_3/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
-model/sequential_1/dense_3/Tensordot/GatherV2GatherV23model/sequential_1/dense_3/Tensordot/Shape:output:02model/sequential_1/dense_3/Tensordot/free:output:0;model/sequential_1/dense_3/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:v
4model/sequential_1/dense_3/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
/model/sequential_1/dense_3/Tensordot/GatherV2_1GatherV23model/sequential_1/dense_3/Tensordot/Shape:output:02model/sequential_1/dense_3/Tensordot/axes:output:0=model/sequential_1/dense_3/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:t
*model/sequential_1/dense_3/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
)model/sequential_1/dense_3/Tensordot/ProdProd6model/sequential_1/dense_3/Tensordot/GatherV2:output:03model/sequential_1/dense_3/Tensordot/Const:output:0*
T0*
_output_shapes
: v
,model/sequential_1/dense_3/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
+model/sequential_1/dense_3/Tensordot/Prod_1Prod8model/sequential_1/dense_3/Tensordot/GatherV2_1:output:05model/sequential_1/dense_3/Tensordot/Const_1:output:0*
T0*
_output_shapes
: r
0model/sequential_1/dense_3/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
+model/sequential_1/dense_3/Tensordot/concatConcatV22model/sequential_1/dense_3/Tensordot/free:output:02model/sequential_1/dense_3/Tensordot/axes:output:09model/sequential_1/dense_3/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
*model/sequential_1/dense_3/Tensordot/stackPack2model/sequential_1/dense_3/Tensordot/Prod:output:04model/sequential_1/dense_3/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
.model/sequential_1/dense_3/Tensordot/transpose	Transpose)model/sequential_1/dense_2/Gelu/mul_1:z:04model/sequential_1/dense_3/Tensordot/concat:output:0*
T0*-
_output_shapes
:����������
��
,model/sequential_1/dense_3/Tensordot/ReshapeReshape2model/sequential_1/dense_3/Tensordot/transpose:y:03model/sequential_1/dense_3/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
+model/sequential_1/dense_3/Tensordot/MatMulMatMul5model/sequential_1/dense_3/Tensordot/Reshape:output:0;model/sequential_1/dense_3/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@v
,model/sequential_1/dense_3/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@t
2model/sequential_1/dense_3/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
-model/sequential_1/dense_3/Tensordot/concat_1ConcatV26model/sequential_1/dense_3/Tensordot/GatherV2:output:05model/sequential_1/dense_3/Tensordot/Const_2:output:0;model/sequential_1/dense_3/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
$model/sequential_1/dense_3/TensordotReshape5model/sequential_1/dense_3/Tensordot/MatMul:product:06model/sequential_1/dense_3/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:����������
@�
1model/sequential_1/dense_3/BiasAdd/ReadVariableOpReadVariableOp:model_sequential_1_dense_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
"model/sequential_1/dense_3/BiasAddBiasAdd-model/sequential_1/dense_3/Tensordot:output:09model/sequential_1/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������
@j
%model/sequential_1/dense_3/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?�
#model/sequential_1/dense_3/Gelu/mulMul.model/sequential_1/dense_3/Gelu/mul/x:output:0+model/sequential_1/dense_3/BiasAdd:output:0*
T0*,
_output_shapes
:����������
@k
&model/sequential_1/dense_3/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *��?�
'model/sequential_1/dense_3/Gelu/truedivRealDiv+model/sequential_1/dense_3/BiasAdd:output:0/model/sequential_1/dense_3/Gelu/Cast/x:output:0*
T0*,
_output_shapes
:����������
@�
#model/sequential_1/dense_3/Gelu/ErfErf+model/sequential_1/dense_3/Gelu/truediv:z:0*
T0*,
_output_shapes
:����������
@j
%model/sequential_1/dense_3/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
#model/sequential_1/dense_3/Gelu/addAddV2.model/sequential_1/dense_3/Gelu/add/x:output:0'model/sequential_1/dense_3/Gelu/Erf:y:0*
T0*,
_output_shapes
:����������
@�
%model/sequential_1/dense_3/Gelu/mul_1Mul'model/sequential_1/dense_3/Gelu/mul:z:0'model/sequential_1/dense_3/Gelu/add:z:0*
T0*,
_output_shapes
:����������
@�
model/add_3/addAddV2)model/sequential_1/dense_3/Gelu/mul_1:z:0model/add_2/add:z:0*
T0*,
_output_shapes
:����������
@�
:model/layer_normalization_4/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
(model/layer_normalization_4/moments/meanMeanmodel/add_3/add:z:0Cmodel/layer_normalization_4/moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:����������
*
	keep_dims(�
0model/layer_normalization_4/moments/StopGradientStopGradient1model/layer_normalization_4/moments/mean:output:0*
T0*,
_output_shapes
:����������
�
5model/layer_normalization_4/moments/SquaredDifferenceSquaredDifferencemodel/add_3/add:z:09model/layer_normalization_4/moments/StopGradient:output:0*
T0*,
_output_shapes
:����������
@�
>model/layer_normalization_4/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
,model/layer_normalization_4/moments/varianceMean9model/layer_normalization_4/moments/SquaredDifference:z:0Gmodel/layer_normalization_4/moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:����������
*
	keep_dims(p
+model/layer_normalization_4/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
)model/layer_normalization_4/batchnorm/addAddV25model/layer_normalization_4/moments/variance:output:04model/layer_normalization_4/batchnorm/add/y:output:0*
T0*,
_output_shapes
:����������
�
+model/layer_normalization_4/batchnorm/RsqrtRsqrt-model/layer_normalization_4/batchnorm/add:z:0*
T0*,
_output_shapes
:����������
�
8model/layer_normalization_4/batchnorm/mul/ReadVariableOpReadVariableOpAmodel_layer_normalization_4_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype0�
)model/layer_normalization_4/batchnorm/mulMul/model/layer_normalization_4/batchnorm/Rsqrt:y:0@model/layer_normalization_4/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������
@�
+model/layer_normalization_4/batchnorm/mul_1Mulmodel/add_3/add:z:0-model/layer_normalization_4/batchnorm/mul:z:0*
T0*,
_output_shapes
:����������
@�
+model/layer_normalization_4/batchnorm/mul_2Mul1model/layer_normalization_4/moments/mean:output:0-model/layer_normalization_4/batchnorm/mul:z:0*
T0*,
_output_shapes
:����������
@�
4model/layer_normalization_4/batchnorm/ReadVariableOpReadVariableOp=model_layer_normalization_4_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype0�
)model/layer_normalization_4/batchnorm/subSub<model/layer_normalization_4/batchnorm/ReadVariableOp:value:0/model/layer_normalization_4/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:����������
@�
+model/layer_normalization_4/batchnorm/add_1AddV2/model/layer_normalization_4/batchnorm/mul_1:z:0-model/layer_normalization_4/batchnorm/sub:z:0*
T0*,
_output_shapes
:����������
@w
5model/global_average_pooling1d/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :�
#model/global_average_pooling1d/MeanMean/model/layer_normalization_4/batchnorm/add_1:z:0>model/global_average_pooling1d/Mean/reduction_indices:output:0*
T0*'
_output_shapes
:���������@�
#model/dense_4/MatMul/ReadVariableOpReadVariableOp,model_dense_4_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0�
model/dense_4/MatMulMatMul,model/global_average_pooling1d/Mean:output:0+model/dense_4/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
$model/dense_4/BiasAdd/ReadVariableOpReadVariableOp-model_dense_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model/dense_4/BiasAddBiasAddmodel/dense_4/MatMul:product:0,model/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
model/dense_4/SoftmaxSoftmaxmodel/dense_4/BiasAdd:output:0*
T0*'
_output_shapes
:���������n
IdentityIdentitymodel/dense_4/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp%^model/dense_4/BiasAdd/ReadVariableOp$^model/dense_4/MatMul/ReadVariableOp3^model/layer_normalization/batchnorm/ReadVariableOp7^model/layer_normalization/batchnorm/mul/ReadVariableOp5^model/layer_normalization_1/batchnorm/ReadVariableOp9^model/layer_normalization_1/batchnorm/mul/ReadVariableOp5^model/layer_normalization_2/batchnorm/ReadVariableOp9^model/layer_normalization_2/batchnorm/mul/ReadVariableOp5^model/layer_normalization_3/batchnorm/ReadVariableOp9^model/layer_normalization_3/batchnorm/mul/ReadVariableOp5^model/layer_normalization_4/batchnorm/ReadVariableOp9^model/layer_normalization_4/batchnorm/mul/ReadVariableOp?^model/multi_head_attention/attention_output/add/ReadVariableOpI^model/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp2^model/multi_head_attention/key/add/ReadVariableOp<^model/multi_head_attention/key/einsum/Einsum/ReadVariableOp4^model/multi_head_attention/query/add/ReadVariableOp>^model/multi_head_attention/query/einsum/Einsum/ReadVariableOp4^model/multi_head_attention/value/add/ReadVariableOp>^model/multi_head_attention/value/einsum/Einsum/ReadVariableOpA^model/multi_head_attention_1/attention_output/add/ReadVariableOpK^model/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp4^model/multi_head_attention_1/key/add/ReadVariableOp>^model/multi_head_attention_1/key/einsum/Einsum/ReadVariableOp6^model/multi_head_attention_1/query/add/ReadVariableOp@^model/multi_head_attention_1/query/einsum/Einsum/ReadVariableOp6^model/multi_head_attention_1/value/add/ReadVariableOp@^model/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp4^model/positional_encoder/embedding/embedding_lookup.^model/sequential/dense/BiasAdd/ReadVariableOp0^model/sequential/dense/Tensordot/ReadVariableOp0^model/sequential/dense_1/BiasAdd/ReadVariableOp2^model/sequential/dense_1/Tensordot/ReadVariableOp2^model/sequential_1/dense_2/BiasAdd/ReadVariableOp4^model/sequential_1/dense_2/Tensordot/ReadVariableOp2^model/sequential_1/dense_3/BiasAdd/ReadVariableOp4^model/sequential_1/dense_3/Tensordot/ReadVariableOp6^model/tubelet_embedding/conv3d/BiasAdd/ReadVariableOp5^model/tubelet_embedding/conv3d/Conv3D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapesx
v:���������*��: : :�
: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2L
$model/dense_4/BiasAdd/ReadVariableOp$model/dense_4/BiasAdd/ReadVariableOp2J
#model/dense_4/MatMul/ReadVariableOp#model/dense_4/MatMul/ReadVariableOp2h
2model/layer_normalization/batchnorm/ReadVariableOp2model/layer_normalization/batchnorm/ReadVariableOp2p
6model/layer_normalization/batchnorm/mul/ReadVariableOp6model/layer_normalization/batchnorm/mul/ReadVariableOp2l
4model/layer_normalization_1/batchnorm/ReadVariableOp4model/layer_normalization_1/batchnorm/ReadVariableOp2t
8model/layer_normalization_1/batchnorm/mul/ReadVariableOp8model/layer_normalization_1/batchnorm/mul/ReadVariableOp2l
4model/layer_normalization_2/batchnorm/ReadVariableOp4model/layer_normalization_2/batchnorm/ReadVariableOp2t
8model/layer_normalization_2/batchnorm/mul/ReadVariableOp8model/layer_normalization_2/batchnorm/mul/ReadVariableOp2l
4model/layer_normalization_3/batchnorm/ReadVariableOp4model/layer_normalization_3/batchnorm/ReadVariableOp2t
8model/layer_normalization_3/batchnorm/mul/ReadVariableOp8model/layer_normalization_3/batchnorm/mul/ReadVariableOp2l
4model/layer_normalization_4/batchnorm/ReadVariableOp4model/layer_normalization_4/batchnorm/ReadVariableOp2t
8model/layer_normalization_4/batchnorm/mul/ReadVariableOp8model/layer_normalization_4/batchnorm/mul/ReadVariableOp2�
>model/multi_head_attention/attention_output/add/ReadVariableOp>model/multi_head_attention/attention_output/add/ReadVariableOp2�
Hmodel/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOpHmodel/multi_head_attention/attention_output/einsum/Einsum/ReadVariableOp2f
1model/multi_head_attention/key/add/ReadVariableOp1model/multi_head_attention/key/add/ReadVariableOp2z
;model/multi_head_attention/key/einsum/Einsum/ReadVariableOp;model/multi_head_attention/key/einsum/Einsum/ReadVariableOp2j
3model/multi_head_attention/query/add/ReadVariableOp3model/multi_head_attention/query/add/ReadVariableOp2~
=model/multi_head_attention/query/einsum/Einsum/ReadVariableOp=model/multi_head_attention/query/einsum/Einsum/ReadVariableOp2j
3model/multi_head_attention/value/add/ReadVariableOp3model/multi_head_attention/value/add/ReadVariableOp2~
=model/multi_head_attention/value/einsum/Einsum/ReadVariableOp=model/multi_head_attention/value/einsum/Einsum/ReadVariableOp2�
@model/multi_head_attention_1/attention_output/add/ReadVariableOp@model/multi_head_attention_1/attention_output/add/ReadVariableOp2�
Jmodel/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpJmodel/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp2j
3model/multi_head_attention_1/key/add/ReadVariableOp3model/multi_head_attention_1/key/add/ReadVariableOp2~
=model/multi_head_attention_1/key/einsum/Einsum/ReadVariableOp=model/multi_head_attention_1/key/einsum/Einsum/ReadVariableOp2n
5model/multi_head_attention_1/query/add/ReadVariableOp5model/multi_head_attention_1/query/add/ReadVariableOp2�
?model/multi_head_attention_1/query/einsum/Einsum/ReadVariableOp?model/multi_head_attention_1/query/einsum/Einsum/ReadVariableOp2n
5model/multi_head_attention_1/value/add/ReadVariableOp5model/multi_head_attention_1/value/add/ReadVariableOp2�
?model/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp?model/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp2j
3model/positional_encoder/embedding/embedding_lookup3model/positional_encoder/embedding/embedding_lookup2^
-model/sequential/dense/BiasAdd/ReadVariableOp-model/sequential/dense/BiasAdd/ReadVariableOp2b
/model/sequential/dense/Tensordot/ReadVariableOp/model/sequential/dense/Tensordot/ReadVariableOp2b
/model/sequential/dense_1/BiasAdd/ReadVariableOp/model/sequential/dense_1/BiasAdd/ReadVariableOp2f
1model/sequential/dense_1/Tensordot/ReadVariableOp1model/sequential/dense_1/Tensordot/ReadVariableOp2f
1model/sequential_1/dense_2/BiasAdd/ReadVariableOp1model/sequential_1/dense_2/BiasAdd/ReadVariableOp2j
3model/sequential_1/dense_2/Tensordot/ReadVariableOp3model/sequential_1/dense_2/Tensordot/ReadVariableOp2f
1model/sequential_1/dense_3/BiasAdd/ReadVariableOp1model/sequential_1/dense_3/BiasAdd/ReadVariableOp2j
3model/sequential_1/dense_3/Tensordot/ReadVariableOp3model/sequential_1/dense_3/Tensordot/ReadVariableOp2n
5model/tubelet_embedding/conv3d/BiasAdd/ReadVariableOp5model/tubelet_embedding/conv3d/BiasAdd/ReadVariableOp2l
4model/tubelet_embedding/conv3d/Conv3D/ReadVariableOp4model/tubelet_embedding/conv3d/Conv3D/ReadVariableOp:^ Z
5
_output_shapes#
!:���������*��
!
_user_specified_name	input_1:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:B>

_output_shapes	
:�


_user_specified_name22316:%!

_user_specified_name22318:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:( $
"
_user_specified_name
resource:(!$
"
_user_specified_name
resource:("$
"
_user_specified_name
resource:(#$
"
_user_specified_name
resource:($$
"
_user_specified_name
resource:(%$
"
_user_specified_name
resource:(&$
"
_user_specified_name
resource:('$
"
_user_specified_name
resource:(($
"
_user_specified_name
resource
�
o
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_24407

inputs
identityX
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :p
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:������������������^
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'���������������������������:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs
�#
�
B__inference_dense_2_layer_call_and_return_conditional_losses_22811

inputs4
!tensordot_readvariableop_resource:	@�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOp{
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	@�*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       S
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
::��Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:z
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:����������
@�
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������\
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*-
_output_shapes
:����������
�s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:����������
�O

Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?n
Gelu/mulMulGelu/mul/x:output:0BiasAdd:output:0*
T0*-
_output_shapes
:����������
�P
Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *��?w
Gelu/truedivRealDivBiasAdd:output:0Gelu/Cast/x:output:0*
T0*-
_output_shapes
:����������
�Y
Gelu/ErfErfGelu/truediv:z:0*
T0*-
_output_shapes
:����������
�O

Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?l
Gelu/addAddV2Gelu/add/x:output:0Gelu/Erf:y:0*
T0*-
_output_shapes
:����������
�e

Gelu/mul_1MulGelu/mul:z:0Gelu/add:z:0*
T0*-
_output_shapes
:����������
�c
IdentityIdentityGelu/mul_1:z:0^NoOp*
T0*-
_output_shapes
:����������
�V
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������
@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:����������
@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�

�
B__inference_dense_4_layer_call_and_return_conditional_losses_24427

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�	
�
M__inference_positional_encoder_layer_call_and_return_conditional_losses_23951
encoded_tokens
unknown3
 embedding_embedding_lookup_23945:	�
@
identity��embedding/embedding_lookup�
embedding/embedding_lookupResourceGather embedding_embedding_lookup_23945unknown*
Tindices0*3
_class)
'%loc:@embedding/embedding_lookup/23945*
_output_shapes
:	�
@*
dtype0~
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0*
T0*
_output_shapes
:	�
@�
addAddV2encoded_tokens,embedding/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:����������
@[
IdentityIdentityadd:z:0^NoOp*
T0*,
_output_shapes
:����������
@?
NoOpNoOp^embedding/embedding_lookup*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:����������
@:�
: 28
embedding/embedding_lookupembedding/embedding_lookup:\ X
,
_output_shapes
:����������
@
(
_user_specified_nameencoded_tokens:B>

_output_shapes	
:�


_user_specified_name23943:%!

_user_specified_name23945
�

�
B__inference_dense_4_layer_call_and_return_conditional_losses_23283

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�#
�
B__inference_dense_1_layer_call_and_return_conditional_losses_24521

inputs4
!tensordot_readvariableop_resource:	�@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOp{
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	�@*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       S
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
::��Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:{
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*-
_output_shapes
:����������
��
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:����������
@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������
@O

Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?m
Gelu/mulMulGelu/mul/x:output:0BiasAdd:output:0*
T0*,
_output_shapes
:����������
@P
Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *��?v
Gelu/truedivRealDivBiasAdd:output:0Gelu/Cast/x:output:0*
T0*,
_output_shapes
:����������
@X
Gelu/ErfErfGelu/truediv:z:0*
T0*,
_output_shapes
:����������
@O

Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?k
Gelu/addAddV2Gelu/add/x:output:0Gelu/Erf:y:0*
T0*,
_output_shapes
:����������
@d

Gelu/mul_1MulGelu/mul:z:0Gelu/add:z:0*
T0*,
_output_shapes
:����������
@b
IdentityIdentityGelu/mul_1:z:0^NoOp*
T0*,
_output_shapes
:����������
@V
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:����������
�: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:U Q
-
_output_shapes
:����������
�
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�#
�
@__inference_dense_layer_call_and_return_conditional_losses_24474

inputs4
!tensordot_readvariableop_resource:	@�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOp{
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	@�*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       S
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
::��Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:z
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:����������
@�
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������\
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*-
_output_shapes
:����������
�s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:����������
�O

Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?n
Gelu/mulMulGelu/mul/x:output:0BiasAdd:output:0*
T0*-
_output_shapes
:����������
�P
Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *��?w
Gelu/truedivRealDivBiasAdd:output:0Gelu/Cast/x:output:0*
T0*-
_output_shapes
:����������
�Y
Gelu/ErfErfGelu/truediv:z:0*
T0*-
_output_shapes
:����������
�O

Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?l
Gelu/addAddV2Gelu/add/x:output:0Gelu/Erf:y:0*
T0*-
_output_shapes
:����������
�e

Gelu/mul_1MulGelu/mul:z:0Gelu/add:z:0*
T0*-
_output_shapes
:����������
�c
IdentityIdentityGelu/mul_1:z:0^NoOp*
T0*-
_output_shapes
:����������
�V
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������
@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:����������
@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
3__inference_layer_normalization_layer_call_fn_23960

inputs
unknown:@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������
@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_layer_normalization_layer_call_and_return_conditional_losses_22994t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:����������
@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������
@: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:����������
@
 
_user_specified_nameinputs:%!

_user_specified_name23954:%!

_user_specified_name23956
�
Q
%__inference_add_1_layer_call_fn_24152
inputs_0
inputs_1
identity�
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������
@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_add_1_layer_call_and_return_conditional_losses_23107e
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:����������
@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:����������
@:����������
@:V R
,
_output_shapes
:����������
@
"
_user_specified_name
inputs_0:VR
,
_output_shapes
:����������
@
"
_user_specified_name
inputs_1
�
j
@__inference_add_2_layer_call_and_return_conditional_losses_23200

inputs
inputs_1
identityU
addAddV2inputsinputs_1*
T0*,
_output_shapes
:����������
@T
IdentityIdentityadd:z:0*
T0*,
_output_shapes
:����������
@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:����������
@:����������
@:T P
,
_output_shapes
:����������
@
 
_user_specified_nameinputs:TP
,
_output_shapes
:����������
@
 
_user_specified_nameinputs
�
�
'__inference_dense_2_layer_call_fn_24530

inputs
unknown:	@�
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:����������
�*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_22811u
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*-
_output_shapes
:����������
�<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������
@: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:����������
@
 
_user_specified_nameinputs:%!

_user_specified_name24524:%!

_user_specified_name24526
�
�
P__inference_layer_normalization_4_layer_call_and_return_conditional_losses_23266

inputs3
%batchnorm_mul_readvariableop_resource:@/
!batchnorm_readvariableop_resource:@
identity��batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:����������
*
	keep_dims(r
moments/StopGradientStopGradientmoments/mean:output:0*
T0*,
_output_shapes
:����������
�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*,
_output_shapes
:����������
@l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:����������
*
	keep_dims(T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*,
_output_shapes
:����������
b
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*,
_output_shapes
:����������
~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype0�
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������
@h
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*,
_output_shapes
:����������
@w
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*,
_output_shapes
:����������
@v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype0�
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*,
_output_shapes
:����������
@w
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*,
_output_shapes
:����������
@g
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*,
_output_shapes
:����������
@\
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������
@: : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:T P
,
_output_shapes
:����������
@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
j
>__inference_add_layer_call_and_return_conditional_losses_24115
inputs_0
inputs_1
identityW
addAddV2inputs_0inputs_1*
T0*,
_output_shapes
:����������
@T
IdentityIdentityadd:z:0*
T0*,
_output_shapes
:����������
@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:����������
@:����������
@:V R
,
_output_shapes
:����������
@
"
_user_specified_name
inputs_0:VR
,
_output_shapes
:����������
@
"
_user_specified_name
inputs_1
�
�
1__inference_tubelet_embedding_layer_call_fn_23912

videos%
unknown:@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallvideosunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������
@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_tubelet_embedding_layer_call_and_return_conditional_losses_22951t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:����������
@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:���������*��: : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
5
_output_shapes#
!:���������*��
 
_user_specified_namevideos:%!

_user_specified_name23906:%!

_user_specified_name23908
�#
�
B__inference_dense_2_layer_call_and_return_conditional_losses_24568

inputs4
!tensordot_readvariableop_resource:	@�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOp{
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	@�*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       S
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
::��Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:z
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:����������
@�
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������\
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*-
_output_shapes
:����������
�s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:����������
�O

Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?n
Gelu/mulMulGelu/mul/x:output:0BiasAdd:output:0*
T0*-
_output_shapes
:����������
�P
Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *��?w
Gelu/truedivRealDivBiasAdd:output:0Gelu/Cast/x:output:0*
T0*-
_output_shapes
:����������
�Y
Gelu/ErfErfGelu/truediv:z:0*
T0*-
_output_shapes
:����������
�O

Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?l
Gelu/addAddV2Gelu/add/x:output:0Gelu/Erf:y:0*
T0*-
_output_shapes
:����������
�e

Gelu/mul_1MulGelu/mul:z:0Gelu/add:z:0*
T0*-
_output_shapes
:����������
�c
IdentityIdentityGelu/mul_1:z:0^NoOp*
T0*-
_output_shapes
:����������
�V
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������
@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:����������
@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
%__inference_dense_layer_call_fn_24436

inputs
unknown:	@�
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:����������
�*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_22663u
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*-
_output_shapes
:����������
�<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������
@: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:����������
@
 
_user_specified_nameinputs:%!

_user_specified_name24430:%!

_user_specified_name24432
�,
�
O__inference_multi_head_attention_layer_call_and_return_conditional_losses_24103	
query	
valueA
+query_einsum_einsum_readvariableop_resource:@ 3
!query_add_readvariableop_resource: ?
)key_einsum_einsum_readvariableop_resource:@ 1
key_add_readvariableop_resource: A
+value_einsum_einsum_readvariableop_resource:@ 3
!value_add_readvariableop_resource: L
6attention_output_einsum_einsum_readvariableop_resource: @:
,attention_output_add_readvariableop_resource:@
identity��#attention_output/add/ReadVariableOp�-attention_output/einsum/Einsum/ReadVariableOp�key/add/ReadVariableOp� key/einsum/Einsum/ReadVariableOp�query/add/ReadVariableOp�"query/einsum/Einsum/ReadVariableOp�value/add/ReadVariableOp�"value/einsum/Einsum/ReadVariableOp�
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*"
_output_shapes
:@ *
dtype0�
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:����������
 *
equationabc,cde->abdez
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes

: *
dtype0�
	query/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������
 �
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*"
_output_shapes
:@ *
dtype0�
key/einsum/EinsumEinsumvalue(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:����������
 *
equationabc,cde->abdev
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes

: *
dtype0�
key/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������
 �
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*"
_output_shapes
:@ *
dtype0�
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:����������
 *
equationabc,cde->abdez
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes

: *
dtype0�
	value/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������
 J
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *�5>d
MulMulquery/add:z:0Mul/y:output:0*
T0*0
_output_shapes
:����������
 �
einsum/EinsumEinsumkey/add:z:0Mul:z:0*
N*
T0*1
_output_shapes
:����������
�
*
equationaecd,abcd->acben
softmax/SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*1
_output_shapes
:����������
�
s
dropout/IdentityIdentitysoftmax/Softmax:softmax:0*
T0*1
_output_shapes
:����������
�
�
einsum_1/EinsumEinsumdropout/Identity:output:0value/add:z:0*
N*
T0*0
_output_shapes
:����������
 *
equationacbe,aecd->abcd�
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
: @*
dtype0�
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:����������
@*
equationabcd,cde->abe�
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes
:@*
dtype0�
attention_output/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������
@l
IdentityIdentityattention_output/add:z:0^NoOp*
T0*,
_output_shapes
:����������
@�
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:����������
@:����������
@: : : : : : : : 2J
#attention_output/add/ReadVariableOp#attention_output/add/ReadVariableOp2^
-attention_output/einsum/Einsum/ReadVariableOp-attention_output/einsum/Einsum/ReadVariableOp20
key/add/ReadVariableOpkey/add/ReadVariableOp2D
 key/einsum/Einsum/ReadVariableOp key/einsum/Einsum/ReadVariableOp24
query/add/ReadVariableOpquery/add/ReadVariableOp2H
"query/einsum/Einsum/ReadVariableOp"query/einsum/Einsum/ReadVariableOp24
value/add/ReadVariableOpvalue/add/ReadVariableOp2H
"value/einsum/Einsum/ReadVariableOp"value/einsum/Einsum/ReadVariableOp:S O
,
_output_shapes
:����������
@

_user_specified_namequery:SO
,
_output_shapes
:����������
@

_user_specified_namevalue:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource
�	
�
,__inference_sequential_1_layer_call_fn_22888
dense_2_input
unknown:	@�
	unknown_0:	�
	unknown_1:	�@
	unknown_2:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalldense_2_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������
@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_22861t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:����������
@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������
@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
,
_output_shapes
:����������
@
'
_user_specified_namedense_2_input:%!

_user_specified_name22878:%!

_user_specified_name22880:%!

_user_specified_name22882:%!

_user_specified_name22884
�
Q
%__inference_add_3_layer_call_fn_24359
inputs_0
inputs_1
identity�
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������
@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_add_3_layer_call_and_return_conditional_losses_23243e
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:����������
@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:����������
@:����������
@:V R
,
_output_shapes
:����������
@
"
_user_specified_name
inputs_0:VR
,
_output_shapes
:����������
@
"
_user_specified_name
inputs_1
�
�
6__inference_multi_head_attention_1_layer_call_fn_24233	
query	
value
unknown:@ 
	unknown_0: 
	unknown_1:@ 
	unknown_2: 
	unknown_3:@ 
	unknown_4: 
	unknown_5: @
	unknown_6:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallqueryvalueunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2
*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������
@**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_multi_head_attention_1_layer_call_and_return_conditional_losses_23415t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:����������
@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:����������
@:����������
@: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
,
_output_shapes
:����������
@

_user_specified_namequery:SO
,
_output_shapes
:����������
@

_user_specified_namevalue:%!

_user_specified_name24215:%!

_user_specified_name24217:%!

_user_specified_name24219:%!

_user_specified_name24221:%!

_user_specified_name24223:%!

_user_specified_name24225:%!

_user_specified_name24227:%	!

_user_specified_name24229
�
�
N__inference_layer_normalization_layer_call_and_return_conditional_losses_22994

inputs3
%batchnorm_mul_readvariableop_resource:@/
!batchnorm_readvariableop_resource:@
identity��batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:����������
*
	keep_dims(r
moments/StopGradientStopGradientmoments/mean:output:0*
T0*,
_output_shapes
:����������
�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*,
_output_shapes
:����������
@l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:����������
*
	keep_dims(T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*,
_output_shapes
:����������
b
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*,
_output_shapes
:����������
~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype0�
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������
@h
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*,
_output_shapes
:����������
@w
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*,
_output_shapes
:����������
@v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype0�
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*,
_output_shapes
:����������
@w
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*,
_output_shapes
:����������
@g
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*,
_output_shapes
:����������
@\
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������
@: : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:T P
,
_output_shapes
:����������
@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
N__inference_layer_normalization_layer_call_and_return_conditional_losses_23982

inputs3
%batchnorm_mul_readvariableop_resource:@/
!batchnorm_readvariableop_resource:@
identity��batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:����������
*
	keep_dims(r
moments/StopGradientStopGradientmoments/mean:output:0*
T0*,
_output_shapes
:����������
�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*,
_output_shapes
:����������
@l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:����������
*
	keep_dims(T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*,
_output_shapes
:����������
b
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*,
_output_shapes
:����������
~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype0�
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������
@h
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*,
_output_shapes
:����������
@w
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*,
_output_shapes
:����������
@v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype0�
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*,
_output_shapes
:����������
@w
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*,
_output_shapes
:����������
@g
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*,
_output_shapes
:����������
@\
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������
@: : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:T P
,
_output_shapes
:����������
@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
4__inference_multi_head_attention_layer_call_fn_24026	
query	
value
unknown:@ 
	unknown_0: 
	unknown_1:@ 
	unknown_2: 
	unknown_3:@ 
	unknown_4: 
	unknown_5: @
	unknown_6:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallqueryvalueunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2
*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������
@**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8� *X
fSRQ
O__inference_multi_head_attention_layer_call_and_return_conditional_losses_23342t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:����������
@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:����������
@:����������
@: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
,
_output_shapes
:����������
@

_user_specified_namequery:SO
,
_output_shapes
:����������
@

_user_specified_namevalue:%!

_user_specified_name24008:%!

_user_specified_name24010:%!

_user_specified_name24012:%!

_user_specified_name24014:%!

_user_specified_name24016:%!

_user_specified_name24018:%!

_user_specified_name24020:%	!

_user_specified_name24022
�
�
P__inference_layer_normalization_3_layer_call_and_return_conditional_losses_23223

inputs3
%batchnorm_mul_readvariableop_resource:@/
!batchnorm_readvariableop_resource:@
identity��batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:����������
*
	keep_dims(r
moments/StopGradientStopGradientmoments/mean:output:0*
T0*,
_output_shapes
:����������
�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*,
_output_shapes
:����������
@l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:����������
*
	keep_dims(T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*,
_output_shapes
:����������
b
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*,
_output_shapes
:����������
~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype0�
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������
@h
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*,
_output_shapes
:����������
@w
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*,
_output_shapes
:����������
@v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype0�
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*,
_output_shapes
:����������
@w
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*,
_output_shapes
:����������
@g
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*,
_output_shapes
:����������
@\
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������
@: : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:T P
,
_output_shapes
:����������
@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
E__inference_sequential_layer_call_and_return_conditional_losses_22727
dense_input
dense_22716:	@�
dense_22718:	� 
dense_1_22721:	�@
dense_1_22723:@
identity��dense/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�
dense/StatefulPartitionedCallStatefulPartitionedCalldense_inputdense_22716dense_22718*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:����������
�*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_22663�
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_22721dense_1_22723*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������
@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_22706|
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:����������
@d
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������
@: : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:Y U
,
_output_shapes
:����������
@
%
_user_specified_namedense_input:%!

_user_specified_name22716:%!

_user_specified_name22718:%!

_user_specified_name22721:%!

_user_specified_name22723
�#
�
@__inference_dense_layer_call_and_return_conditional_losses_22663

inputs4
!tensordot_readvariableop_resource:	@�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOp{
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	@�*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       S
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
::��Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:z
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:����������
@�
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������\
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:�Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*-
_output_shapes
:����������
�s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0~
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:����������
�O

Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?n
Gelu/mulMulGelu/mul/x:output:0BiasAdd:output:0*
T0*-
_output_shapes
:����������
�P
Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *��?w
Gelu/truedivRealDivBiasAdd:output:0Gelu/Cast/x:output:0*
T0*-
_output_shapes
:����������
�Y
Gelu/ErfErfGelu/truediv:z:0*
T0*-
_output_shapes
:����������
�O

Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?l
Gelu/addAddV2Gelu/add/x:output:0Gelu/Erf:y:0*
T0*-
_output_shapes
:����������
�e

Gelu/mul_1MulGelu/mul:z:0Gelu/add:z:0*
T0*-
_output_shapes
:����������
�c
IdentityIdentityGelu/mul_1:z:0^NoOp*
T0*-
_output_shapes
:����������
�V
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������
@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:����������
@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
P__inference_layer_normalization_2_layer_call_and_return_conditional_losses_23130

inputs3
%batchnorm_mul_readvariableop_resource:@/
!batchnorm_readvariableop_resource:@
identity��batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:����������
*
	keep_dims(r
moments/StopGradientStopGradientmoments/mean:output:0*
T0*,
_output_shapes
:����������
�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*,
_output_shapes
:����������
@l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:����������
*
	keep_dims(T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*,
_output_shapes
:����������
b
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*,
_output_shapes
:����������
~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype0�
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������
@h
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*,
_output_shapes
:����������
@w
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*,
_output_shapes
:����������
@v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype0�
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*,
_output_shapes
:����������
@w
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*,
_output_shapes
:����������
@g
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*,
_output_shapes
:����������
@\
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������
@: : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:T P
,
_output_shapes
:����������
@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
4__inference_multi_head_attention_layer_call_fn_24004	
query	
value
unknown:@ 
	unknown_0: 
	unknown_1:@ 
	unknown_2: 
	unknown_3:@ 
	unknown_4: 
	unknown_5: @
	unknown_6:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallqueryvalueunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2
*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������
@**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8� *X
fSRQ
O__inference_multi_head_attention_layer_call_and_return_conditional_losses_23041t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:����������
@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:����������
@:����������
@: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
,
_output_shapes
:����������
@

_user_specified_namequery:SO
,
_output_shapes
:����������
@

_user_specified_namevalue:%!

_user_specified_name23986:%!

_user_specified_name23988:%!

_user_specified_name23990:%!

_user_specified_name23992:%!

_user_specified_name23994:%!

_user_specified_name23996:%!

_user_specified_name23998:%	!

_user_specified_name24000
�#
�
B__inference_dense_1_layer_call_and_return_conditional_losses_22706

inputs4
!tensordot_readvariableop_resource:	�@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOp{
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	�@*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       S
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
::��Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:{
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*-
_output_shapes
:����������
��
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:����������
@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������
@O

Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?m
Gelu/mulMulGelu/mul/x:output:0BiasAdd:output:0*
T0*,
_output_shapes
:����������
@P
Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *��?v
Gelu/truedivRealDivBiasAdd:output:0Gelu/Cast/x:output:0*
T0*,
_output_shapes
:����������
@X
Gelu/ErfErfGelu/truediv:z:0*
T0*,
_output_shapes
:����������
@O

Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?k
Gelu/addAddV2Gelu/add/x:output:0Gelu/Erf:y:0*
T0*,
_output_shapes
:����������
@d

Gelu/mul_1MulGelu/mul:z:0Gelu/add:z:0*
T0*,
_output_shapes
:����������
@b
IdentityIdentityGelu/mul_1:z:0^NoOp*
T0*,
_output_shapes
:����������
@V
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:����������
�: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:U Q
-
_output_shapes
:����������
�
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
o
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_22925

inputs
identityX
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :p
MeanMeaninputsMean/reduction_indices:output:0*
T0*0
_output_shapes
:������������������^
IdentityIdentityMean:output:0*
T0*0
_output_shapes
:������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'���������������������������:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs
�
j
@__inference_add_3_layer_call_and_return_conditional_losses_23243

inputs
inputs_1
identityU
addAddV2inputsinputs_1*
T0*,
_output_shapes
:����������
@T
IdentityIdentityadd:z:0*
T0*,
_output_shapes
:����������
@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:����������
@:����������
@:T P
,
_output_shapes
:����������
@
 
_user_specified_nameinputs:TP
,
_output_shapes
:����������
@
 
_user_specified_nameinputs
�
�
P__inference_layer_normalization_3_layer_call_and_return_conditional_losses_24353

inputs3
%batchnorm_mul_readvariableop_resource:@/
!batchnorm_readvariableop_resource:@
identity��batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:����������
*
	keep_dims(r
moments/StopGradientStopGradientmoments/mean:output:0*
T0*,
_output_shapes
:����������
�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*,
_output_shapes
:����������
@l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:����������
*
	keep_dims(T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*,
_output_shapes
:����������
b
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*,
_output_shapes
:����������
~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype0�
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������
@h
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*,
_output_shapes
:����������
@w
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*,
_output_shapes
:����������
@v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype0�
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*,
_output_shapes
:����������
@w
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*,
_output_shapes
:����������
@g
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*,
_output_shapes
:����������
@\
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������
@: : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:T P
,
_output_shapes
:����������
@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
5__inference_layer_normalization_2_layer_call_fn_24167

inputs
unknown:@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������
@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Y
fTRR
P__inference_layer_normalization_2_layer_call_and_return_conditional_losses_23130t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:����������
@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������
@: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:����������
@
 
_user_specified_nameinputs:%!

_user_specified_name24161:%!

_user_specified_name24163
�
�
P__inference_layer_normalization_2_layer_call_and_return_conditional_losses_24189

inputs3
%batchnorm_mul_readvariableop_resource:@/
!batchnorm_readvariableop_resource:@
identity��batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:����������
*
	keep_dims(r
moments/StopGradientStopGradientmoments/mean:output:0*
T0*,
_output_shapes
:����������
�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*,
_output_shapes
:����������
@l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:����������
*
	keep_dims(T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*,
_output_shapes
:����������
b
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*,
_output_shapes
:����������
~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype0�
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������
@h
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*,
_output_shapes
:����������
@w
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*,
_output_shapes
:����������
@v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype0�
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*,
_output_shapes
:����������
@w
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*,
_output_shapes
:����������
@g
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*,
_output_shapes
:����������
@\
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������
@: : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:T P
,
_output_shapes
:����������
@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�,
�
Q__inference_multi_head_attention_1_layer_call_and_return_conditional_losses_24310	
query	
valueA
+query_einsum_einsum_readvariableop_resource:@ 3
!query_add_readvariableop_resource: ?
)key_einsum_einsum_readvariableop_resource:@ 1
key_add_readvariableop_resource: A
+value_einsum_einsum_readvariableop_resource:@ 3
!value_add_readvariableop_resource: L
6attention_output_einsum_einsum_readvariableop_resource: @:
,attention_output_add_readvariableop_resource:@
identity��#attention_output/add/ReadVariableOp�-attention_output/einsum/Einsum/ReadVariableOp�key/add/ReadVariableOp� key/einsum/Einsum/ReadVariableOp�query/add/ReadVariableOp�"query/einsum/Einsum/ReadVariableOp�value/add/ReadVariableOp�"value/einsum/Einsum/ReadVariableOp�
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*"
_output_shapes
:@ *
dtype0�
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:����������
 *
equationabc,cde->abdez
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes

: *
dtype0�
	query/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������
 �
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*"
_output_shapes
:@ *
dtype0�
key/einsum/EinsumEinsumvalue(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:����������
 *
equationabc,cde->abdev
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes

: *
dtype0�
key/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������
 �
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*"
_output_shapes
:@ *
dtype0�
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:����������
 *
equationabc,cde->abdez
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes

: *
dtype0�
	value/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������
 J
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *�5>d
MulMulquery/add:z:0Mul/y:output:0*
T0*0
_output_shapes
:����������
 �
einsum/EinsumEinsumkey/add:z:0Mul:z:0*
N*
T0*1
_output_shapes
:����������
�
*
equationaecd,abcd->acben
softmax/SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*1
_output_shapes
:����������
�
s
dropout/IdentityIdentitysoftmax/Softmax:softmax:0*
T0*1
_output_shapes
:����������
�
�
einsum_1/EinsumEinsumdropout/Identity:output:0value/add:z:0*
N*
T0*0
_output_shapes
:����������
 *
equationacbe,aecd->abcd�
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
: @*
dtype0�
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:����������
@*
equationabcd,cde->abe�
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes
:@*
dtype0�
attention_output/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������
@l
IdentityIdentityattention_output/add:z:0^NoOp*
T0*,
_output_shapes
:����������
@�
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:����������
@:����������
@: : : : : : : : 2J
#attention_output/add/ReadVariableOp#attention_output/add/ReadVariableOp2^
-attention_output/einsum/Einsum/ReadVariableOp-attention_output/einsum/Einsum/ReadVariableOp20
key/add/ReadVariableOpkey/add/ReadVariableOp2D
 key/einsum/Einsum/ReadVariableOp key/einsum/Einsum/ReadVariableOp24
query/add/ReadVariableOpquery/add/ReadVariableOp2H
"query/einsum/Einsum/ReadVariableOp"query/einsum/Einsum/ReadVariableOp24
value/add/ReadVariableOpvalue/add/ReadVariableOp2H
"value/einsum/Einsum/ReadVariableOp"value/einsum/Einsum/ReadVariableOp:S O
,
_output_shapes
:����������
@

_user_specified_namequery:SO
,
_output_shapes
:����������
@

_user_specified_namevalue:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource
��
��
__inference__traced_save_25412
file_prefix>
0read_disablecopyonread_layer_normalization_gamma:@?
1read_1_disablecopyonread_layer_normalization_beta:@B
4read_2_disablecopyonread_layer_normalization_1_gamma:@A
3read_3_disablecopyonread_layer_normalization_1_beta:@B
4read_4_disablecopyonread_layer_normalization_2_gamma:@A
3read_5_disablecopyonread_layer_normalization_2_beta:@B
4read_6_disablecopyonread_layer_normalization_3_gamma:@A
3read_7_disablecopyonread_layer_normalization_3_beta:@B
4read_8_disablecopyonread_layer_normalization_4_gamma:@A
3read_9_disablecopyonread_layer_normalization_4_beta:@:
(read_10_disablecopyonread_dense_4_kernel:@4
&read_11_disablecopyonread_dense_4_bias:W
9read_12_disablecopyonread_tubelet_embedding_conv3d_kernel:@E
7read_13_disablecopyonread_tubelet_embedding_conv3d_bias:@T
Aread_14_disablecopyonread_positional_encoder_embedding_embeddings:	�
@Q
;read_15_disablecopyonread_multi_head_attention_query_kernel:@ K
9read_16_disablecopyonread_multi_head_attention_query_bias: O
9read_17_disablecopyonread_multi_head_attention_key_kernel:@ I
7read_18_disablecopyonread_multi_head_attention_key_bias: Q
;read_19_disablecopyonread_multi_head_attention_value_kernel:@ K
9read_20_disablecopyonread_multi_head_attention_value_bias: \
Fread_21_disablecopyonread_multi_head_attention_attention_output_kernel: @R
Dread_22_disablecopyonread_multi_head_attention_attention_output_bias:@9
&read_23_disablecopyonread_dense_kernel:	@�3
$read_24_disablecopyonread_dense_bias:	�;
(read_25_disablecopyonread_dense_1_kernel:	�@4
&read_26_disablecopyonread_dense_1_bias:@S
=read_27_disablecopyonread_multi_head_attention_1_query_kernel:@ M
;read_28_disablecopyonread_multi_head_attention_1_query_bias: Q
;read_29_disablecopyonread_multi_head_attention_1_key_kernel:@ K
9read_30_disablecopyonread_multi_head_attention_1_key_bias: S
=read_31_disablecopyonread_multi_head_attention_1_value_kernel:@ M
;read_32_disablecopyonread_multi_head_attention_1_value_bias: ^
Hread_33_disablecopyonread_multi_head_attention_1_attention_output_kernel: @T
Fread_34_disablecopyonread_multi_head_attention_1_attention_output_bias:@;
(read_35_disablecopyonread_dense_2_kernel:	@�5
&read_36_disablecopyonread_dense_2_bias:	�;
(read_37_disablecopyonread_dense_3_kernel:	�@4
&read_38_disablecopyonread_dense_3_bias:@-
#read_39_disablecopyonread_iteration:	 1
'read_40_disablecopyonread_learning_rate: ^
@read_41_disablecopyonread_adam_m_tubelet_embedding_conv3d_kernel:@^
@read_42_disablecopyonread_adam_v_tubelet_embedding_conv3d_kernel:@L
>read_43_disablecopyonread_adam_m_tubelet_embedding_conv3d_bias:@L
>read_44_disablecopyonread_adam_v_tubelet_embedding_conv3d_bias:@[
Hread_45_disablecopyonread_adam_m_positional_encoder_embedding_embeddings:	�
@[
Hread_46_disablecopyonread_adam_v_positional_encoder_embedding_embeddings:	�
@H
:read_47_disablecopyonread_adam_m_layer_normalization_gamma:@H
:read_48_disablecopyonread_adam_v_layer_normalization_gamma:@G
9read_49_disablecopyonread_adam_m_layer_normalization_beta:@G
9read_50_disablecopyonread_adam_v_layer_normalization_beta:@X
Bread_51_disablecopyonread_adam_m_multi_head_attention_query_kernel:@ X
Bread_52_disablecopyonread_adam_v_multi_head_attention_query_kernel:@ R
@read_53_disablecopyonread_adam_m_multi_head_attention_query_bias: R
@read_54_disablecopyonread_adam_v_multi_head_attention_query_bias: V
@read_55_disablecopyonread_adam_m_multi_head_attention_key_kernel:@ V
@read_56_disablecopyonread_adam_v_multi_head_attention_key_kernel:@ P
>read_57_disablecopyonread_adam_m_multi_head_attention_key_bias: P
>read_58_disablecopyonread_adam_v_multi_head_attention_key_bias: X
Bread_59_disablecopyonread_adam_m_multi_head_attention_value_kernel:@ X
Bread_60_disablecopyonread_adam_v_multi_head_attention_value_kernel:@ R
@read_61_disablecopyonread_adam_m_multi_head_attention_value_bias: R
@read_62_disablecopyonread_adam_v_multi_head_attention_value_bias: c
Mread_63_disablecopyonread_adam_m_multi_head_attention_attention_output_kernel: @c
Mread_64_disablecopyonread_adam_v_multi_head_attention_attention_output_kernel: @Y
Kread_65_disablecopyonread_adam_m_multi_head_attention_attention_output_bias:@Y
Kread_66_disablecopyonread_adam_v_multi_head_attention_attention_output_bias:@J
<read_67_disablecopyonread_adam_m_layer_normalization_1_gamma:@J
<read_68_disablecopyonread_adam_v_layer_normalization_1_gamma:@I
;read_69_disablecopyonread_adam_m_layer_normalization_1_beta:@I
;read_70_disablecopyonread_adam_v_layer_normalization_1_beta:@@
-read_71_disablecopyonread_adam_m_dense_kernel:	@�@
-read_72_disablecopyonread_adam_v_dense_kernel:	@�:
+read_73_disablecopyonread_adam_m_dense_bias:	�:
+read_74_disablecopyonread_adam_v_dense_bias:	�B
/read_75_disablecopyonread_adam_m_dense_1_kernel:	�@B
/read_76_disablecopyonread_adam_v_dense_1_kernel:	�@;
-read_77_disablecopyonread_adam_m_dense_1_bias:@;
-read_78_disablecopyonread_adam_v_dense_1_bias:@J
<read_79_disablecopyonread_adam_m_layer_normalization_2_gamma:@J
<read_80_disablecopyonread_adam_v_layer_normalization_2_gamma:@I
;read_81_disablecopyonread_adam_m_layer_normalization_2_beta:@I
;read_82_disablecopyonread_adam_v_layer_normalization_2_beta:@Z
Dread_83_disablecopyonread_adam_m_multi_head_attention_1_query_kernel:@ Z
Dread_84_disablecopyonread_adam_v_multi_head_attention_1_query_kernel:@ T
Bread_85_disablecopyonread_adam_m_multi_head_attention_1_query_bias: T
Bread_86_disablecopyonread_adam_v_multi_head_attention_1_query_bias: X
Bread_87_disablecopyonread_adam_m_multi_head_attention_1_key_kernel:@ X
Bread_88_disablecopyonread_adam_v_multi_head_attention_1_key_kernel:@ R
@read_89_disablecopyonread_adam_m_multi_head_attention_1_key_bias: R
@read_90_disablecopyonread_adam_v_multi_head_attention_1_key_bias: Z
Dread_91_disablecopyonread_adam_m_multi_head_attention_1_value_kernel:@ Z
Dread_92_disablecopyonread_adam_v_multi_head_attention_1_value_kernel:@ T
Bread_93_disablecopyonread_adam_m_multi_head_attention_1_value_bias: T
Bread_94_disablecopyonread_adam_v_multi_head_attention_1_value_bias: e
Oread_95_disablecopyonread_adam_m_multi_head_attention_1_attention_output_kernel: @e
Oread_96_disablecopyonread_adam_v_multi_head_attention_1_attention_output_kernel: @[
Mread_97_disablecopyonread_adam_m_multi_head_attention_1_attention_output_bias:@[
Mread_98_disablecopyonread_adam_v_multi_head_attention_1_attention_output_bias:@J
<read_99_disablecopyonread_adam_m_layer_normalization_3_gamma:@K
=read_100_disablecopyonread_adam_v_layer_normalization_3_gamma:@J
<read_101_disablecopyonread_adam_m_layer_normalization_3_beta:@J
<read_102_disablecopyonread_adam_v_layer_normalization_3_beta:@C
0read_103_disablecopyonread_adam_m_dense_2_kernel:	@�C
0read_104_disablecopyonread_adam_v_dense_2_kernel:	@�=
.read_105_disablecopyonread_adam_m_dense_2_bias:	�=
.read_106_disablecopyonread_adam_v_dense_2_bias:	�C
0read_107_disablecopyonread_adam_m_dense_3_kernel:	�@C
0read_108_disablecopyonread_adam_v_dense_3_kernel:	�@<
.read_109_disablecopyonread_adam_m_dense_3_bias:@<
.read_110_disablecopyonread_adam_v_dense_3_bias:@K
=read_111_disablecopyonread_adam_m_layer_normalization_4_gamma:@K
=read_112_disablecopyonread_adam_v_layer_normalization_4_gamma:@J
<read_113_disablecopyonread_adam_m_layer_normalization_4_beta:@J
<read_114_disablecopyonread_adam_v_layer_normalization_4_beta:@B
0read_115_disablecopyonread_adam_m_dense_4_kernel:@B
0read_116_disablecopyonread_adam_v_dense_4_kernel:@<
.read_117_disablecopyonread_adam_m_dense_4_bias:<
.read_118_disablecopyonread_adam_v_dense_4_bias:,
"read_119_disablecopyonread_total_4: ,
"read_120_disablecopyonread_count_4: ,
"read_121_disablecopyonread_total_3: ,
"read_122_disablecopyonread_count_3: ,
"read_123_disablecopyonread_total_2: ,
"read_124_disablecopyonread_count_2: ,
"read_125_disablecopyonread_total_1: ,
"read_126_disablecopyonread_count_1: *
 read_127_disablecopyonread_total: *
 read_128_disablecopyonread_count: 
savev2_const_1
identity_259��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_10/DisableCopyOnRead�Read_10/ReadVariableOp�Read_100/DisableCopyOnRead�Read_100/ReadVariableOp�Read_101/DisableCopyOnRead�Read_101/ReadVariableOp�Read_102/DisableCopyOnRead�Read_102/ReadVariableOp�Read_103/DisableCopyOnRead�Read_103/ReadVariableOp�Read_104/DisableCopyOnRead�Read_104/ReadVariableOp�Read_105/DisableCopyOnRead�Read_105/ReadVariableOp�Read_106/DisableCopyOnRead�Read_106/ReadVariableOp�Read_107/DisableCopyOnRead�Read_107/ReadVariableOp�Read_108/DisableCopyOnRead�Read_108/ReadVariableOp�Read_109/DisableCopyOnRead�Read_109/ReadVariableOp�Read_11/DisableCopyOnRead�Read_11/ReadVariableOp�Read_110/DisableCopyOnRead�Read_110/ReadVariableOp�Read_111/DisableCopyOnRead�Read_111/ReadVariableOp�Read_112/DisableCopyOnRead�Read_112/ReadVariableOp�Read_113/DisableCopyOnRead�Read_113/ReadVariableOp�Read_114/DisableCopyOnRead�Read_114/ReadVariableOp�Read_115/DisableCopyOnRead�Read_115/ReadVariableOp�Read_116/DisableCopyOnRead�Read_116/ReadVariableOp�Read_117/DisableCopyOnRead�Read_117/ReadVariableOp�Read_118/DisableCopyOnRead�Read_118/ReadVariableOp�Read_119/DisableCopyOnRead�Read_119/ReadVariableOp�Read_12/DisableCopyOnRead�Read_12/ReadVariableOp�Read_120/DisableCopyOnRead�Read_120/ReadVariableOp�Read_121/DisableCopyOnRead�Read_121/ReadVariableOp�Read_122/DisableCopyOnRead�Read_122/ReadVariableOp�Read_123/DisableCopyOnRead�Read_123/ReadVariableOp�Read_124/DisableCopyOnRead�Read_124/ReadVariableOp�Read_125/DisableCopyOnRead�Read_125/ReadVariableOp�Read_126/DisableCopyOnRead�Read_126/ReadVariableOp�Read_127/DisableCopyOnRead�Read_127/ReadVariableOp�Read_128/DisableCopyOnRead�Read_128/ReadVariableOp�Read_13/DisableCopyOnRead�Read_13/ReadVariableOp�Read_14/DisableCopyOnRead�Read_14/ReadVariableOp�Read_15/DisableCopyOnRead�Read_15/ReadVariableOp�Read_16/DisableCopyOnRead�Read_16/ReadVariableOp�Read_17/DisableCopyOnRead�Read_17/ReadVariableOp�Read_18/DisableCopyOnRead�Read_18/ReadVariableOp�Read_19/DisableCopyOnRead�Read_19/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_20/DisableCopyOnRead�Read_20/ReadVariableOp�Read_21/DisableCopyOnRead�Read_21/ReadVariableOp�Read_22/DisableCopyOnRead�Read_22/ReadVariableOp�Read_23/DisableCopyOnRead�Read_23/ReadVariableOp�Read_24/DisableCopyOnRead�Read_24/ReadVariableOp�Read_25/DisableCopyOnRead�Read_25/ReadVariableOp�Read_26/DisableCopyOnRead�Read_26/ReadVariableOp�Read_27/DisableCopyOnRead�Read_27/ReadVariableOp�Read_28/DisableCopyOnRead�Read_28/ReadVariableOp�Read_29/DisableCopyOnRead�Read_29/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_30/DisableCopyOnRead�Read_30/ReadVariableOp�Read_31/DisableCopyOnRead�Read_31/ReadVariableOp�Read_32/DisableCopyOnRead�Read_32/ReadVariableOp�Read_33/DisableCopyOnRead�Read_33/ReadVariableOp�Read_34/DisableCopyOnRead�Read_34/ReadVariableOp�Read_35/DisableCopyOnRead�Read_35/ReadVariableOp�Read_36/DisableCopyOnRead�Read_36/ReadVariableOp�Read_37/DisableCopyOnRead�Read_37/ReadVariableOp�Read_38/DisableCopyOnRead�Read_38/ReadVariableOp�Read_39/DisableCopyOnRead�Read_39/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_40/DisableCopyOnRead�Read_40/ReadVariableOp�Read_41/DisableCopyOnRead�Read_41/ReadVariableOp�Read_42/DisableCopyOnRead�Read_42/ReadVariableOp�Read_43/DisableCopyOnRead�Read_43/ReadVariableOp�Read_44/DisableCopyOnRead�Read_44/ReadVariableOp�Read_45/DisableCopyOnRead�Read_45/ReadVariableOp�Read_46/DisableCopyOnRead�Read_46/ReadVariableOp�Read_47/DisableCopyOnRead�Read_47/ReadVariableOp�Read_48/DisableCopyOnRead�Read_48/ReadVariableOp�Read_49/DisableCopyOnRead�Read_49/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_50/DisableCopyOnRead�Read_50/ReadVariableOp�Read_51/DisableCopyOnRead�Read_51/ReadVariableOp�Read_52/DisableCopyOnRead�Read_52/ReadVariableOp�Read_53/DisableCopyOnRead�Read_53/ReadVariableOp�Read_54/DisableCopyOnRead�Read_54/ReadVariableOp�Read_55/DisableCopyOnRead�Read_55/ReadVariableOp�Read_56/DisableCopyOnRead�Read_56/ReadVariableOp�Read_57/DisableCopyOnRead�Read_57/ReadVariableOp�Read_58/DisableCopyOnRead�Read_58/ReadVariableOp�Read_59/DisableCopyOnRead�Read_59/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_60/DisableCopyOnRead�Read_60/ReadVariableOp�Read_61/DisableCopyOnRead�Read_61/ReadVariableOp�Read_62/DisableCopyOnRead�Read_62/ReadVariableOp�Read_63/DisableCopyOnRead�Read_63/ReadVariableOp�Read_64/DisableCopyOnRead�Read_64/ReadVariableOp�Read_65/DisableCopyOnRead�Read_65/ReadVariableOp�Read_66/DisableCopyOnRead�Read_66/ReadVariableOp�Read_67/DisableCopyOnRead�Read_67/ReadVariableOp�Read_68/DisableCopyOnRead�Read_68/ReadVariableOp�Read_69/DisableCopyOnRead�Read_69/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOp�Read_70/DisableCopyOnRead�Read_70/ReadVariableOp�Read_71/DisableCopyOnRead�Read_71/ReadVariableOp�Read_72/DisableCopyOnRead�Read_72/ReadVariableOp�Read_73/DisableCopyOnRead�Read_73/ReadVariableOp�Read_74/DisableCopyOnRead�Read_74/ReadVariableOp�Read_75/DisableCopyOnRead�Read_75/ReadVariableOp�Read_76/DisableCopyOnRead�Read_76/ReadVariableOp�Read_77/DisableCopyOnRead�Read_77/ReadVariableOp�Read_78/DisableCopyOnRead�Read_78/ReadVariableOp�Read_79/DisableCopyOnRead�Read_79/ReadVariableOp�Read_8/DisableCopyOnRead�Read_8/ReadVariableOp�Read_80/DisableCopyOnRead�Read_80/ReadVariableOp�Read_81/DisableCopyOnRead�Read_81/ReadVariableOp�Read_82/DisableCopyOnRead�Read_82/ReadVariableOp�Read_83/DisableCopyOnRead�Read_83/ReadVariableOp�Read_84/DisableCopyOnRead�Read_84/ReadVariableOp�Read_85/DisableCopyOnRead�Read_85/ReadVariableOp�Read_86/DisableCopyOnRead�Read_86/ReadVariableOp�Read_87/DisableCopyOnRead�Read_87/ReadVariableOp�Read_88/DisableCopyOnRead�Read_88/ReadVariableOp�Read_89/DisableCopyOnRead�Read_89/ReadVariableOp�Read_9/DisableCopyOnRead�Read_9/ReadVariableOp�Read_90/DisableCopyOnRead�Read_90/ReadVariableOp�Read_91/DisableCopyOnRead�Read_91/ReadVariableOp�Read_92/DisableCopyOnRead�Read_92/ReadVariableOp�Read_93/DisableCopyOnRead�Read_93/ReadVariableOp�Read_94/DisableCopyOnRead�Read_94/ReadVariableOp�Read_95/DisableCopyOnRead�Read_95/ReadVariableOp�Read_96/DisableCopyOnRead�Read_96/ReadVariableOp�Read_97/DisableCopyOnRead�Read_97/ReadVariableOp�Read_98/DisableCopyOnRead�Read_98/ReadVariableOp�Read_99/DisableCopyOnRead�Read_99/ReadVariableOpw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
Read/DisableCopyOnReadDisableCopyOnRead0read_disablecopyonread_layer_normalization_gamma"/device:CPU:0*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp0read_disablecopyonread_layer_normalization_gamma^Read/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0e
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@]

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_1/DisableCopyOnReadDisableCopyOnRead1read_1_disablecopyonread_layer_normalization_beta"/device:CPU:0*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp1read_1_disablecopyonread_layer_normalization_beta^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@_

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_2/DisableCopyOnReadDisableCopyOnRead4read_2_disablecopyonread_layer_normalization_1_gamma"/device:CPU:0*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp4read_2_disablecopyonread_layer_normalization_1_gamma^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0i

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@_

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_3/DisableCopyOnReadDisableCopyOnRead3read_3_disablecopyonread_layer_normalization_1_beta"/device:CPU:0*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp3read_3_disablecopyonread_layer_normalization_1_beta^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0i

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@_

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_4/DisableCopyOnReadDisableCopyOnRead4read_4_disablecopyonread_layer_normalization_2_gamma"/device:CPU:0*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp4read_4_disablecopyonread_layer_normalization_2_gamma^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0i

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@_

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_5/DisableCopyOnReadDisableCopyOnRead3read_5_disablecopyonread_layer_normalization_2_beta"/device:CPU:0*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp3read_5_disablecopyonread_layer_normalization_2_beta^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0j
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_6/DisableCopyOnReadDisableCopyOnRead4read_6_disablecopyonread_layer_normalization_3_gamma"/device:CPU:0*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp4read_6_disablecopyonread_layer_normalization_3_gamma^Read_6/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0j
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_7/DisableCopyOnReadDisableCopyOnRead3read_7_disablecopyonread_layer_normalization_3_beta"/device:CPU:0*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp3read_7_disablecopyonread_layer_normalization_3_beta^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0j
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_8/DisableCopyOnReadDisableCopyOnRead4read_8_disablecopyonread_layer_normalization_4_gamma"/device:CPU:0*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOp4read_8_disablecopyonread_layer_normalization_4_gamma^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0j
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_9/DisableCopyOnReadDisableCopyOnRead3read_9_disablecopyonread_layer_normalization_4_beta"/device:CPU:0*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOp3read_9_disablecopyonread_layer_normalization_4_beta^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0j
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
:@}
Read_10/DisableCopyOnReadDisableCopyOnRead(read_10_disablecopyonread_dense_4_kernel"/device:CPU:0*
_output_shapes
 �
Read_10/ReadVariableOpReadVariableOp(read_10_disablecopyonread_dense_4_kernel^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0o
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@e
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes

:@{
Read_11/DisableCopyOnReadDisableCopyOnRead&read_11_disablecopyonread_dense_4_bias"/device:CPU:0*
_output_shapes
 �
Read_11/ReadVariableOpReadVariableOp&read_11_disablecopyonread_dense_4_bias^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_12/DisableCopyOnReadDisableCopyOnRead9read_12_disablecopyonread_tubelet_embedding_conv3d_kernel"/device:CPU:0*
_output_shapes
 �
Read_12/ReadVariableOpReadVariableOp9read_12_disablecopyonread_tubelet_embedding_conv3d_kernel^Read_12/DisableCopyOnRead"/device:CPU:0**
_output_shapes
:@*
dtype0{
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0**
_output_shapes
:@q
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0**
_output_shapes
:@�
Read_13/DisableCopyOnReadDisableCopyOnRead7read_13_disablecopyonread_tubelet_embedding_conv3d_bias"/device:CPU:0*
_output_shapes
 �
Read_13/ReadVariableOpReadVariableOp7read_13_disablecopyonread_tubelet_embedding_conv3d_bias^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_14/DisableCopyOnReadDisableCopyOnReadAread_14_disablecopyonread_positional_encoder_embedding_embeddings"/device:CPU:0*
_output_shapes
 �
Read_14/ReadVariableOpReadVariableOpAread_14_disablecopyonread_positional_encoder_embedding_embeddings^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�
@*
dtype0p
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�
@f
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes
:	�
@�
Read_15/DisableCopyOnReadDisableCopyOnRead;read_15_disablecopyonread_multi_head_attention_query_kernel"/device:CPU:0*
_output_shapes
 �
Read_15/ReadVariableOpReadVariableOp;read_15_disablecopyonread_multi_head_attention_query_kernel^Read_15/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:@ *
dtype0s
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:@ i
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*"
_output_shapes
:@ �
Read_16/DisableCopyOnReadDisableCopyOnRead9read_16_disablecopyonread_multi_head_attention_query_bias"/device:CPU:0*
_output_shapes
 �
Read_16/ReadVariableOpReadVariableOp9read_16_disablecopyonread_multi_head_attention_query_bias^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes

: *
dtype0o
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

: e
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes

: �
Read_17/DisableCopyOnReadDisableCopyOnRead9read_17_disablecopyonread_multi_head_attention_key_kernel"/device:CPU:0*
_output_shapes
 �
Read_17/ReadVariableOpReadVariableOp9read_17_disablecopyonread_multi_head_attention_key_kernel^Read_17/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:@ *
dtype0s
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:@ i
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*"
_output_shapes
:@ �
Read_18/DisableCopyOnReadDisableCopyOnRead7read_18_disablecopyonread_multi_head_attention_key_bias"/device:CPU:0*
_output_shapes
 �
Read_18/ReadVariableOpReadVariableOp7read_18_disablecopyonread_multi_head_attention_key_bias^Read_18/DisableCopyOnRead"/device:CPU:0*
_output_shapes

: *
dtype0o
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

: e
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*
_output_shapes

: �
Read_19/DisableCopyOnReadDisableCopyOnRead;read_19_disablecopyonread_multi_head_attention_value_kernel"/device:CPU:0*
_output_shapes
 �
Read_19/ReadVariableOpReadVariableOp;read_19_disablecopyonread_multi_head_attention_value_kernel^Read_19/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:@ *
dtype0s
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:@ i
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*"
_output_shapes
:@ �
Read_20/DisableCopyOnReadDisableCopyOnRead9read_20_disablecopyonread_multi_head_attention_value_bias"/device:CPU:0*
_output_shapes
 �
Read_20/ReadVariableOpReadVariableOp9read_20_disablecopyonread_multi_head_attention_value_bias^Read_20/DisableCopyOnRead"/device:CPU:0*
_output_shapes

: *
dtype0o
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

: e
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes

: �
Read_21/DisableCopyOnReadDisableCopyOnReadFread_21_disablecopyonread_multi_head_attention_attention_output_kernel"/device:CPU:0*
_output_shapes
 �
Read_21/ReadVariableOpReadVariableOpFread_21_disablecopyonread_multi_head_attention_attention_output_kernel^Read_21/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
: @*
dtype0s
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
: @i
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*"
_output_shapes
: @�
Read_22/DisableCopyOnReadDisableCopyOnReadDread_22_disablecopyonread_multi_head_attention_attention_output_bias"/device:CPU:0*
_output_shapes
 �
Read_22/ReadVariableOpReadVariableOpDread_22_disablecopyonread_multi_head_attention_attention_output_bias^Read_22/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*
_output_shapes
:@{
Read_23/DisableCopyOnReadDisableCopyOnRead&read_23_disablecopyonread_dense_kernel"/device:CPU:0*
_output_shapes
 �
Read_23/ReadVariableOpReadVariableOp&read_23_disablecopyonread_dense_kernel^Read_23/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	@�*
dtype0p
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	@�f
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes
:	@�y
Read_24/DisableCopyOnReadDisableCopyOnRead$read_24_disablecopyonread_dense_bias"/device:CPU:0*
_output_shapes
 �
Read_24/ReadVariableOpReadVariableOp$read_24_disablecopyonread_dense_bias^Read_24/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*
_output_shapes	
:�}
Read_25/DisableCopyOnReadDisableCopyOnRead(read_25_disablecopyonread_dense_1_kernel"/device:CPU:0*
_output_shapes
 �
Read_25/ReadVariableOpReadVariableOp(read_25_disablecopyonread_dense_1_kernel^Read_25/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�@*
dtype0p
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�@f
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes
:	�@{
Read_26/DisableCopyOnReadDisableCopyOnRead&read_26_disablecopyonread_dense_1_bias"/device:CPU:0*
_output_shapes
 �
Read_26/ReadVariableOpReadVariableOp&read_26_disablecopyonread_dense_1_bias^Read_26/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_27/DisableCopyOnReadDisableCopyOnRead=read_27_disablecopyonread_multi_head_attention_1_query_kernel"/device:CPU:0*
_output_shapes
 �
Read_27/ReadVariableOpReadVariableOp=read_27_disablecopyonread_multi_head_attention_1_query_kernel^Read_27/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:@ *
dtype0s
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:@ i
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*"
_output_shapes
:@ �
Read_28/DisableCopyOnReadDisableCopyOnRead;read_28_disablecopyonread_multi_head_attention_1_query_bias"/device:CPU:0*
_output_shapes
 �
Read_28/ReadVariableOpReadVariableOp;read_28_disablecopyonread_multi_head_attention_1_query_bias^Read_28/DisableCopyOnRead"/device:CPU:0*
_output_shapes

: *
dtype0o
Identity_56IdentityRead_28/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

: e
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0*
_output_shapes

: �
Read_29/DisableCopyOnReadDisableCopyOnRead;read_29_disablecopyonread_multi_head_attention_1_key_kernel"/device:CPU:0*
_output_shapes
 �
Read_29/ReadVariableOpReadVariableOp;read_29_disablecopyonread_multi_head_attention_1_key_kernel^Read_29/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:@ *
dtype0s
Identity_58IdentityRead_29/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:@ i
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0*"
_output_shapes
:@ �
Read_30/DisableCopyOnReadDisableCopyOnRead9read_30_disablecopyonread_multi_head_attention_1_key_bias"/device:CPU:0*
_output_shapes
 �
Read_30/ReadVariableOpReadVariableOp9read_30_disablecopyonread_multi_head_attention_1_key_bias^Read_30/DisableCopyOnRead"/device:CPU:0*
_output_shapes

: *
dtype0o
Identity_60IdentityRead_30/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

: e
Identity_61IdentityIdentity_60:output:0"/device:CPU:0*
T0*
_output_shapes

: �
Read_31/DisableCopyOnReadDisableCopyOnRead=read_31_disablecopyonread_multi_head_attention_1_value_kernel"/device:CPU:0*
_output_shapes
 �
Read_31/ReadVariableOpReadVariableOp=read_31_disablecopyonread_multi_head_attention_1_value_kernel^Read_31/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:@ *
dtype0s
Identity_62IdentityRead_31/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:@ i
Identity_63IdentityIdentity_62:output:0"/device:CPU:0*
T0*"
_output_shapes
:@ �
Read_32/DisableCopyOnReadDisableCopyOnRead;read_32_disablecopyonread_multi_head_attention_1_value_bias"/device:CPU:0*
_output_shapes
 �
Read_32/ReadVariableOpReadVariableOp;read_32_disablecopyonread_multi_head_attention_1_value_bias^Read_32/DisableCopyOnRead"/device:CPU:0*
_output_shapes

: *
dtype0o
Identity_64IdentityRead_32/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

: e
Identity_65IdentityIdentity_64:output:0"/device:CPU:0*
T0*
_output_shapes

: �
Read_33/DisableCopyOnReadDisableCopyOnReadHread_33_disablecopyonread_multi_head_attention_1_attention_output_kernel"/device:CPU:0*
_output_shapes
 �
Read_33/ReadVariableOpReadVariableOpHread_33_disablecopyonread_multi_head_attention_1_attention_output_kernel^Read_33/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
: @*
dtype0s
Identity_66IdentityRead_33/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
: @i
Identity_67IdentityIdentity_66:output:0"/device:CPU:0*
T0*"
_output_shapes
: @�
Read_34/DisableCopyOnReadDisableCopyOnReadFread_34_disablecopyonread_multi_head_attention_1_attention_output_bias"/device:CPU:0*
_output_shapes
 �
Read_34/ReadVariableOpReadVariableOpFread_34_disablecopyonread_multi_head_attention_1_attention_output_bias^Read_34/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_68IdentityRead_34/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_69IdentityIdentity_68:output:0"/device:CPU:0*
T0*
_output_shapes
:@}
Read_35/DisableCopyOnReadDisableCopyOnRead(read_35_disablecopyonread_dense_2_kernel"/device:CPU:0*
_output_shapes
 �
Read_35/ReadVariableOpReadVariableOp(read_35_disablecopyonread_dense_2_kernel^Read_35/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	@�*
dtype0p
Identity_70IdentityRead_35/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	@�f
Identity_71IdentityIdentity_70:output:0"/device:CPU:0*
T0*
_output_shapes
:	@�{
Read_36/DisableCopyOnReadDisableCopyOnRead&read_36_disablecopyonread_dense_2_bias"/device:CPU:0*
_output_shapes
 �
Read_36/ReadVariableOpReadVariableOp&read_36_disablecopyonread_dense_2_bias^Read_36/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_72IdentityRead_36/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_73IdentityIdentity_72:output:0"/device:CPU:0*
T0*
_output_shapes	
:�}
Read_37/DisableCopyOnReadDisableCopyOnRead(read_37_disablecopyonread_dense_3_kernel"/device:CPU:0*
_output_shapes
 �
Read_37/ReadVariableOpReadVariableOp(read_37_disablecopyonread_dense_3_kernel^Read_37/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�@*
dtype0p
Identity_74IdentityRead_37/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�@f
Identity_75IdentityIdentity_74:output:0"/device:CPU:0*
T0*
_output_shapes
:	�@{
Read_38/DisableCopyOnReadDisableCopyOnRead&read_38_disablecopyonread_dense_3_bias"/device:CPU:0*
_output_shapes
 �
Read_38/ReadVariableOpReadVariableOp&read_38_disablecopyonread_dense_3_bias^Read_38/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_76IdentityRead_38/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_77IdentityIdentity_76:output:0"/device:CPU:0*
T0*
_output_shapes
:@x
Read_39/DisableCopyOnReadDisableCopyOnRead#read_39_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 �
Read_39/ReadVariableOpReadVariableOp#read_39_disablecopyonread_iteration^Read_39/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	g
Identity_78IdentityRead_39/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_79IdentityIdentity_78:output:0"/device:CPU:0*
T0	*
_output_shapes
: |
Read_40/DisableCopyOnReadDisableCopyOnRead'read_40_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 �
Read_40/ReadVariableOpReadVariableOp'read_40_disablecopyonread_learning_rate^Read_40/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_80IdentityRead_40/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_81IdentityIdentity_80:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_41/DisableCopyOnReadDisableCopyOnRead@read_41_disablecopyonread_adam_m_tubelet_embedding_conv3d_kernel"/device:CPU:0*
_output_shapes
 �
Read_41/ReadVariableOpReadVariableOp@read_41_disablecopyonread_adam_m_tubelet_embedding_conv3d_kernel^Read_41/DisableCopyOnRead"/device:CPU:0**
_output_shapes
:@*
dtype0{
Identity_82IdentityRead_41/ReadVariableOp:value:0"/device:CPU:0*
T0**
_output_shapes
:@q
Identity_83IdentityIdentity_82:output:0"/device:CPU:0*
T0**
_output_shapes
:@�
Read_42/DisableCopyOnReadDisableCopyOnRead@read_42_disablecopyonread_adam_v_tubelet_embedding_conv3d_kernel"/device:CPU:0*
_output_shapes
 �
Read_42/ReadVariableOpReadVariableOp@read_42_disablecopyonread_adam_v_tubelet_embedding_conv3d_kernel^Read_42/DisableCopyOnRead"/device:CPU:0**
_output_shapes
:@*
dtype0{
Identity_84IdentityRead_42/ReadVariableOp:value:0"/device:CPU:0*
T0**
_output_shapes
:@q
Identity_85IdentityIdentity_84:output:0"/device:CPU:0*
T0**
_output_shapes
:@�
Read_43/DisableCopyOnReadDisableCopyOnRead>read_43_disablecopyonread_adam_m_tubelet_embedding_conv3d_bias"/device:CPU:0*
_output_shapes
 �
Read_43/ReadVariableOpReadVariableOp>read_43_disablecopyonread_adam_m_tubelet_embedding_conv3d_bias^Read_43/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_86IdentityRead_43/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_87IdentityIdentity_86:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_44/DisableCopyOnReadDisableCopyOnRead>read_44_disablecopyonread_adam_v_tubelet_embedding_conv3d_bias"/device:CPU:0*
_output_shapes
 �
Read_44/ReadVariableOpReadVariableOp>read_44_disablecopyonread_adam_v_tubelet_embedding_conv3d_bias^Read_44/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_88IdentityRead_44/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_89IdentityIdentity_88:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_45/DisableCopyOnReadDisableCopyOnReadHread_45_disablecopyonread_adam_m_positional_encoder_embedding_embeddings"/device:CPU:0*
_output_shapes
 �
Read_45/ReadVariableOpReadVariableOpHread_45_disablecopyonread_adam_m_positional_encoder_embedding_embeddings^Read_45/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�
@*
dtype0p
Identity_90IdentityRead_45/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�
@f
Identity_91IdentityIdentity_90:output:0"/device:CPU:0*
T0*
_output_shapes
:	�
@�
Read_46/DisableCopyOnReadDisableCopyOnReadHread_46_disablecopyonread_adam_v_positional_encoder_embedding_embeddings"/device:CPU:0*
_output_shapes
 �
Read_46/ReadVariableOpReadVariableOpHread_46_disablecopyonread_adam_v_positional_encoder_embedding_embeddings^Read_46/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�
@*
dtype0p
Identity_92IdentityRead_46/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�
@f
Identity_93IdentityIdentity_92:output:0"/device:CPU:0*
T0*
_output_shapes
:	�
@�
Read_47/DisableCopyOnReadDisableCopyOnRead:read_47_disablecopyonread_adam_m_layer_normalization_gamma"/device:CPU:0*
_output_shapes
 �
Read_47/ReadVariableOpReadVariableOp:read_47_disablecopyonread_adam_m_layer_normalization_gamma^Read_47/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_94IdentityRead_47/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_95IdentityIdentity_94:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_48/DisableCopyOnReadDisableCopyOnRead:read_48_disablecopyonread_adam_v_layer_normalization_gamma"/device:CPU:0*
_output_shapes
 �
Read_48/ReadVariableOpReadVariableOp:read_48_disablecopyonread_adam_v_layer_normalization_gamma^Read_48/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_96IdentityRead_48/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_97IdentityIdentity_96:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_49/DisableCopyOnReadDisableCopyOnRead9read_49_disablecopyonread_adam_m_layer_normalization_beta"/device:CPU:0*
_output_shapes
 �
Read_49/ReadVariableOpReadVariableOp9read_49_disablecopyonread_adam_m_layer_normalization_beta^Read_49/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_98IdentityRead_49/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_99IdentityIdentity_98:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_50/DisableCopyOnReadDisableCopyOnRead9read_50_disablecopyonread_adam_v_layer_normalization_beta"/device:CPU:0*
_output_shapes
 �
Read_50/ReadVariableOpReadVariableOp9read_50_disablecopyonread_adam_v_layer_normalization_beta^Read_50/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_100IdentityRead_50/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_101IdentityIdentity_100:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_51/DisableCopyOnReadDisableCopyOnReadBread_51_disablecopyonread_adam_m_multi_head_attention_query_kernel"/device:CPU:0*
_output_shapes
 �
Read_51/ReadVariableOpReadVariableOpBread_51_disablecopyonread_adam_m_multi_head_attention_query_kernel^Read_51/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:@ *
dtype0t
Identity_102IdentityRead_51/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:@ k
Identity_103IdentityIdentity_102:output:0"/device:CPU:0*
T0*"
_output_shapes
:@ �
Read_52/DisableCopyOnReadDisableCopyOnReadBread_52_disablecopyonread_adam_v_multi_head_attention_query_kernel"/device:CPU:0*
_output_shapes
 �
Read_52/ReadVariableOpReadVariableOpBread_52_disablecopyonread_adam_v_multi_head_attention_query_kernel^Read_52/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:@ *
dtype0t
Identity_104IdentityRead_52/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:@ k
Identity_105IdentityIdentity_104:output:0"/device:CPU:0*
T0*"
_output_shapes
:@ �
Read_53/DisableCopyOnReadDisableCopyOnRead@read_53_disablecopyonread_adam_m_multi_head_attention_query_bias"/device:CPU:0*
_output_shapes
 �
Read_53/ReadVariableOpReadVariableOp@read_53_disablecopyonread_adam_m_multi_head_attention_query_bias^Read_53/DisableCopyOnRead"/device:CPU:0*
_output_shapes

: *
dtype0p
Identity_106IdentityRead_53/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

: g
Identity_107IdentityIdentity_106:output:0"/device:CPU:0*
T0*
_output_shapes

: �
Read_54/DisableCopyOnReadDisableCopyOnRead@read_54_disablecopyonread_adam_v_multi_head_attention_query_bias"/device:CPU:0*
_output_shapes
 �
Read_54/ReadVariableOpReadVariableOp@read_54_disablecopyonread_adam_v_multi_head_attention_query_bias^Read_54/DisableCopyOnRead"/device:CPU:0*
_output_shapes

: *
dtype0p
Identity_108IdentityRead_54/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

: g
Identity_109IdentityIdentity_108:output:0"/device:CPU:0*
T0*
_output_shapes

: �
Read_55/DisableCopyOnReadDisableCopyOnRead@read_55_disablecopyonread_adam_m_multi_head_attention_key_kernel"/device:CPU:0*
_output_shapes
 �
Read_55/ReadVariableOpReadVariableOp@read_55_disablecopyonread_adam_m_multi_head_attention_key_kernel^Read_55/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:@ *
dtype0t
Identity_110IdentityRead_55/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:@ k
Identity_111IdentityIdentity_110:output:0"/device:CPU:0*
T0*"
_output_shapes
:@ �
Read_56/DisableCopyOnReadDisableCopyOnRead@read_56_disablecopyonread_adam_v_multi_head_attention_key_kernel"/device:CPU:0*
_output_shapes
 �
Read_56/ReadVariableOpReadVariableOp@read_56_disablecopyonread_adam_v_multi_head_attention_key_kernel^Read_56/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:@ *
dtype0t
Identity_112IdentityRead_56/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:@ k
Identity_113IdentityIdentity_112:output:0"/device:CPU:0*
T0*"
_output_shapes
:@ �
Read_57/DisableCopyOnReadDisableCopyOnRead>read_57_disablecopyonread_adam_m_multi_head_attention_key_bias"/device:CPU:0*
_output_shapes
 �
Read_57/ReadVariableOpReadVariableOp>read_57_disablecopyonread_adam_m_multi_head_attention_key_bias^Read_57/DisableCopyOnRead"/device:CPU:0*
_output_shapes

: *
dtype0p
Identity_114IdentityRead_57/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

: g
Identity_115IdentityIdentity_114:output:0"/device:CPU:0*
T0*
_output_shapes

: �
Read_58/DisableCopyOnReadDisableCopyOnRead>read_58_disablecopyonread_adam_v_multi_head_attention_key_bias"/device:CPU:0*
_output_shapes
 �
Read_58/ReadVariableOpReadVariableOp>read_58_disablecopyonread_adam_v_multi_head_attention_key_bias^Read_58/DisableCopyOnRead"/device:CPU:0*
_output_shapes

: *
dtype0p
Identity_116IdentityRead_58/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

: g
Identity_117IdentityIdentity_116:output:0"/device:CPU:0*
T0*
_output_shapes

: �
Read_59/DisableCopyOnReadDisableCopyOnReadBread_59_disablecopyonread_adam_m_multi_head_attention_value_kernel"/device:CPU:0*
_output_shapes
 �
Read_59/ReadVariableOpReadVariableOpBread_59_disablecopyonread_adam_m_multi_head_attention_value_kernel^Read_59/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:@ *
dtype0t
Identity_118IdentityRead_59/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:@ k
Identity_119IdentityIdentity_118:output:0"/device:CPU:0*
T0*"
_output_shapes
:@ �
Read_60/DisableCopyOnReadDisableCopyOnReadBread_60_disablecopyonread_adam_v_multi_head_attention_value_kernel"/device:CPU:0*
_output_shapes
 �
Read_60/ReadVariableOpReadVariableOpBread_60_disablecopyonread_adam_v_multi_head_attention_value_kernel^Read_60/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:@ *
dtype0t
Identity_120IdentityRead_60/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:@ k
Identity_121IdentityIdentity_120:output:0"/device:CPU:0*
T0*"
_output_shapes
:@ �
Read_61/DisableCopyOnReadDisableCopyOnRead@read_61_disablecopyonread_adam_m_multi_head_attention_value_bias"/device:CPU:0*
_output_shapes
 �
Read_61/ReadVariableOpReadVariableOp@read_61_disablecopyonread_adam_m_multi_head_attention_value_bias^Read_61/DisableCopyOnRead"/device:CPU:0*
_output_shapes

: *
dtype0p
Identity_122IdentityRead_61/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

: g
Identity_123IdentityIdentity_122:output:0"/device:CPU:0*
T0*
_output_shapes

: �
Read_62/DisableCopyOnReadDisableCopyOnRead@read_62_disablecopyonread_adam_v_multi_head_attention_value_bias"/device:CPU:0*
_output_shapes
 �
Read_62/ReadVariableOpReadVariableOp@read_62_disablecopyonread_adam_v_multi_head_attention_value_bias^Read_62/DisableCopyOnRead"/device:CPU:0*
_output_shapes

: *
dtype0p
Identity_124IdentityRead_62/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

: g
Identity_125IdentityIdentity_124:output:0"/device:CPU:0*
T0*
_output_shapes

: �
Read_63/DisableCopyOnReadDisableCopyOnReadMread_63_disablecopyonread_adam_m_multi_head_attention_attention_output_kernel"/device:CPU:0*
_output_shapes
 �
Read_63/ReadVariableOpReadVariableOpMread_63_disablecopyonread_adam_m_multi_head_attention_attention_output_kernel^Read_63/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
: @*
dtype0t
Identity_126IdentityRead_63/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
: @k
Identity_127IdentityIdentity_126:output:0"/device:CPU:0*
T0*"
_output_shapes
: @�
Read_64/DisableCopyOnReadDisableCopyOnReadMread_64_disablecopyonread_adam_v_multi_head_attention_attention_output_kernel"/device:CPU:0*
_output_shapes
 �
Read_64/ReadVariableOpReadVariableOpMread_64_disablecopyonread_adam_v_multi_head_attention_attention_output_kernel^Read_64/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
: @*
dtype0t
Identity_128IdentityRead_64/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
: @k
Identity_129IdentityIdentity_128:output:0"/device:CPU:0*
T0*"
_output_shapes
: @�
Read_65/DisableCopyOnReadDisableCopyOnReadKread_65_disablecopyonread_adam_m_multi_head_attention_attention_output_bias"/device:CPU:0*
_output_shapes
 �
Read_65/ReadVariableOpReadVariableOpKread_65_disablecopyonread_adam_m_multi_head_attention_attention_output_bias^Read_65/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_130IdentityRead_65/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_131IdentityIdentity_130:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_66/DisableCopyOnReadDisableCopyOnReadKread_66_disablecopyonread_adam_v_multi_head_attention_attention_output_bias"/device:CPU:0*
_output_shapes
 �
Read_66/ReadVariableOpReadVariableOpKread_66_disablecopyonread_adam_v_multi_head_attention_attention_output_bias^Read_66/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_132IdentityRead_66/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_133IdentityIdentity_132:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_67/DisableCopyOnReadDisableCopyOnRead<read_67_disablecopyonread_adam_m_layer_normalization_1_gamma"/device:CPU:0*
_output_shapes
 �
Read_67/ReadVariableOpReadVariableOp<read_67_disablecopyonread_adam_m_layer_normalization_1_gamma^Read_67/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_134IdentityRead_67/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_135IdentityIdentity_134:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_68/DisableCopyOnReadDisableCopyOnRead<read_68_disablecopyonread_adam_v_layer_normalization_1_gamma"/device:CPU:0*
_output_shapes
 �
Read_68/ReadVariableOpReadVariableOp<read_68_disablecopyonread_adam_v_layer_normalization_1_gamma^Read_68/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_136IdentityRead_68/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_137IdentityIdentity_136:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_69/DisableCopyOnReadDisableCopyOnRead;read_69_disablecopyonread_adam_m_layer_normalization_1_beta"/device:CPU:0*
_output_shapes
 �
Read_69/ReadVariableOpReadVariableOp;read_69_disablecopyonread_adam_m_layer_normalization_1_beta^Read_69/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_138IdentityRead_69/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_139IdentityIdentity_138:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_70/DisableCopyOnReadDisableCopyOnRead;read_70_disablecopyonread_adam_v_layer_normalization_1_beta"/device:CPU:0*
_output_shapes
 �
Read_70/ReadVariableOpReadVariableOp;read_70_disablecopyonread_adam_v_layer_normalization_1_beta^Read_70/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_140IdentityRead_70/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_141IdentityIdentity_140:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_71/DisableCopyOnReadDisableCopyOnRead-read_71_disablecopyonread_adam_m_dense_kernel"/device:CPU:0*
_output_shapes
 �
Read_71/ReadVariableOpReadVariableOp-read_71_disablecopyonread_adam_m_dense_kernel^Read_71/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	@�*
dtype0q
Identity_142IdentityRead_71/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	@�h
Identity_143IdentityIdentity_142:output:0"/device:CPU:0*
T0*
_output_shapes
:	@��
Read_72/DisableCopyOnReadDisableCopyOnRead-read_72_disablecopyonread_adam_v_dense_kernel"/device:CPU:0*
_output_shapes
 �
Read_72/ReadVariableOpReadVariableOp-read_72_disablecopyonread_adam_v_dense_kernel^Read_72/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	@�*
dtype0q
Identity_144IdentityRead_72/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	@�h
Identity_145IdentityIdentity_144:output:0"/device:CPU:0*
T0*
_output_shapes
:	@��
Read_73/DisableCopyOnReadDisableCopyOnRead+read_73_disablecopyonread_adam_m_dense_bias"/device:CPU:0*
_output_shapes
 �
Read_73/ReadVariableOpReadVariableOp+read_73_disablecopyonread_adam_m_dense_bias^Read_73/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0m
Identity_146IdentityRead_73/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_147IdentityIdentity_146:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_74/DisableCopyOnReadDisableCopyOnRead+read_74_disablecopyonread_adam_v_dense_bias"/device:CPU:0*
_output_shapes
 �
Read_74/ReadVariableOpReadVariableOp+read_74_disablecopyonread_adam_v_dense_bias^Read_74/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0m
Identity_148IdentityRead_74/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_149IdentityIdentity_148:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_75/DisableCopyOnReadDisableCopyOnRead/read_75_disablecopyonread_adam_m_dense_1_kernel"/device:CPU:0*
_output_shapes
 �
Read_75/ReadVariableOpReadVariableOp/read_75_disablecopyonread_adam_m_dense_1_kernel^Read_75/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�@*
dtype0q
Identity_150IdentityRead_75/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�@h
Identity_151IdentityIdentity_150:output:0"/device:CPU:0*
T0*
_output_shapes
:	�@�
Read_76/DisableCopyOnReadDisableCopyOnRead/read_76_disablecopyonread_adam_v_dense_1_kernel"/device:CPU:0*
_output_shapes
 �
Read_76/ReadVariableOpReadVariableOp/read_76_disablecopyonread_adam_v_dense_1_kernel^Read_76/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�@*
dtype0q
Identity_152IdentityRead_76/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�@h
Identity_153IdentityIdentity_152:output:0"/device:CPU:0*
T0*
_output_shapes
:	�@�
Read_77/DisableCopyOnReadDisableCopyOnRead-read_77_disablecopyonread_adam_m_dense_1_bias"/device:CPU:0*
_output_shapes
 �
Read_77/ReadVariableOpReadVariableOp-read_77_disablecopyonread_adam_m_dense_1_bias^Read_77/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_154IdentityRead_77/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_155IdentityIdentity_154:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_78/DisableCopyOnReadDisableCopyOnRead-read_78_disablecopyonread_adam_v_dense_1_bias"/device:CPU:0*
_output_shapes
 �
Read_78/ReadVariableOpReadVariableOp-read_78_disablecopyonread_adam_v_dense_1_bias^Read_78/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_156IdentityRead_78/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_157IdentityIdentity_156:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_79/DisableCopyOnReadDisableCopyOnRead<read_79_disablecopyonread_adam_m_layer_normalization_2_gamma"/device:CPU:0*
_output_shapes
 �
Read_79/ReadVariableOpReadVariableOp<read_79_disablecopyonread_adam_m_layer_normalization_2_gamma^Read_79/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_158IdentityRead_79/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_159IdentityIdentity_158:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_80/DisableCopyOnReadDisableCopyOnRead<read_80_disablecopyonread_adam_v_layer_normalization_2_gamma"/device:CPU:0*
_output_shapes
 �
Read_80/ReadVariableOpReadVariableOp<read_80_disablecopyonread_adam_v_layer_normalization_2_gamma^Read_80/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_160IdentityRead_80/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_161IdentityIdentity_160:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_81/DisableCopyOnReadDisableCopyOnRead;read_81_disablecopyonread_adam_m_layer_normalization_2_beta"/device:CPU:0*
_output_shapes
 �
Read_81/ReadVariableOpReadVariableOp;read_81_disablecopyonread_adam_m_layer_normalization_2_beta^Read_81/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_162IdentityRead_81/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_163IdentityIdentity_162:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_82/DisableCopyOnReadDisableCopyOnRead;read_82_disablecopyonread_adam_v_layer_normalization_2_beta"/device:CPU:0*
_output_shapes
 �
Read_82/ReadVariableOpReadVariableOp;read_82_disablecopyonread_adam_v_layer_normalization_2_beta^Read_82/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_164IdentityRead_82/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_165IdentityIdentity_164:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_83/DisableCopyOnReadDisableCopyOnReadDread_83_disablecopyonread_adam_m_multi_head_attention_1_query_kernel"/device:CPU:0*
_output_shapes
 �
Read_83/ReadVariableOpReadVariableOpDread_83_disablecopyonread_adam_m_multi_head_attention_1_query_kernel^Read_83/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:@ *
dtype0t
Identity_166IdentityRead_83/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:@ k
Identity_167IdentityIdentity_166:output:0"/device:CPU:0*
T0*"
_output_shapes
:@ �
Read_84/DisableCopyOnReadDisableCopyOnReadDread_84_disablecopyonread_adam_v_multi_head_attention_1_query_kernel"/device:CPU:0*
_output_shapes
 �
Read_84/ReadVariableOpReadVariableOpDread_84_disablecopyonread_adam_v_multi_head_attention_1_query_kernel^Read_84/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:@ *
dtype0t
Identity_168IdentityRead_84/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:@ k
Identity_169IdentityIdentity_168:output:0"/device:CPU:0*
T0*"
_output_shapes
:@ �
Read_85/DisableCopyOnReadDisableCopyOnReadBread_85_disablecopyonread_adam_m_multi_head_attention_1_query_bias"/device:CPU:0*
_output_shapes
 �
Read_85/ReadVariableOpReadVariableOpBread_85_disablecopyonread_adam_m_multi_head_attention_1_query_bias^Read_85/DisableCopyOnRead"/device:CPU:0*
_output_shapes

: *
dtype0p
Identity_170IdentityRead_85/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

: g
Identity_171IdentityIdentity_170:output:0"/device:CPU:0*
T0*
_output_shapes

: �
Read_86/DisableCopyOnReadDisableCopyOnReadBread_86_disablecopyonread_adam_v_multi_head_attention_1_query_bias"/device:CPU:0*
_output_shapes
 �
Read_86/ReadVariableOpReadVariableOpBread_86_disablecopyonread_adam_v_multi_head_attention_1_query_bias^Read_86/DisableCopyOnRead"/device:CPU:0*
_output_shapes

: *
dtype0p
Identity_172IdentityRead_86/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

: g
Identity_173IdentityIdentity_172:output:0"/device:CPU:0*
T0*
_output_shapes

: �
Read_87/DisableCopyOnReadDisableCopyOnReadBread_87_disablecopyonread_adam_m_multi_head_attention_1_key_kernel"/device:CPU:0*
_output_shapes
 �
Read_87/ReadVariableOpReadVariableOpBread_87_disablecopyonread_adam_m_multi_head_attention_1_key_kernel^Read_87/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:@ *
dtype0t
Identity_174IdentityRead_87/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:@ k
Identity_175IdentityIdentity_174:output:0"/device:CPU:0*
T0*"
_output_shapes
:@ �
Read_88/DisableCopyOnReadDisableCopyOnReadBread_88_disablecopyonread_adam_v_multi_head_attention_1_key_kernel"/device:CPU:0*
_output_shapes
 �
Read_88/ReadVariableOpReadVariableOpBread_88_disablecopyonread_adam_v_multi_head_attention_1_key_kernel^Read_88/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:@ *
dtype0t
Identity_176IdentityRead_88/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:@ k
Identity_177IdentityIdentity_176:output:0"/device:CPU:0*
T0*"
_output_shapes
:@ �
Read_89/DisableCopyOnReadDisableCopyOnRead@read_89_disablecopyonread_adam_m_multi_head_attention_1_key_bias"/device:CPU:0*
_output_shapes
 �
Read_89/ReadVariableOpReadVariableOp@read_89_disablecopyonread_adam_m_multi_head_attention_1_key_bias^Read_89/DisableCopyOnRead"/device:CPU:0*
_output_shapes

: *
dtype0p
Identity_178IdentityRead_89/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

: g
Identity_179IdentityIdentity_178:output:0"/device:CPU:0*
T0*
_output_shapes

: �
Read_90/DisableCopyOnReadDisableCopyOnRead@read_90_disablecopyonread_adam_v_multi_head_attention_1_key_bias"/device:CPU:0*
_output_shapes
 �
Read_90/ReadVariableOpReadVariableOp@read_90_disablecopyonread_adam_v_multi_head_attention_1_key_bias^Read_90/DisableCopyOnRead"/device:CPU:0*
_output_shapes

: *
dtype0p
Identity_180IdentityRead_90/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

: g
Identity_181IdentityIdentity_180:output:0"/device:CPU:0*
T0*
_output_shapes

: �
Read_91/DisableCopyOnReadDisableCopyOnReadDread_91_disablecopyonread_adam_m_multi_head_attention_1_value_kernel"/device:CPU:0*
_output_shapes
 �
Read_91/ReadVariableOpReadVariableOpDread_91_disablecopyonread_adam_m_multi_head_attention_1_value_kernel^Read_91/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:@ *
dtype0t
Identity_182IdentityRead_91/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:@ k
Identity_183IdentityIdentity_182:output:0"/device:CPU:0*
T0*"
_output_shapes
:@ �
Read_92/DisableCopyOnReadDisableCopyOnReadDread_92_disablecopyonread_adam_v_multi_head_attention_1_value_kernel"/device:CPU:0*
_output_shapes
 �
Read_92/ReadVariableOpReadVariableOpDread_92_disablecopyonread_adam_v_multi_head_attention_1_value_kernel^Read_92/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
:@ *
dtype0t
Identity_184IdentityRead_92/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
:@ k
Identity_185IdentityIdentity_184:output:0"/device:CPU:0*
T0*"
_output_shapes
:@ �
Read_93/DisableCopyOnReadDisableCopyOnReadBread_93_disablecopyonread_adam_m_multi_head_attention_1_value_bias"/device:CPU:0*
_output_shapes
 �
Read_93/ReadVariableOpReadVariableOpBread_93_disablecopyonread_adam_m_multi_head_attention_1_value_bias^Read_93/DisableCopyOnRead"/device:CPU:0*
_output_shapes

: *
dtype0p
Identity_186IdentityRead_93/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

: g
Identity_187IdentityIdentity_186:output:0"/device:CPU:0*
T0*
_output_shapes

: �
Read_94/DisableCopyOnReadDisableCopyOnReadBread_94_disablecopyonread_adam_v_multi_head_attention_1_value_bias"/device:CPU:0*
_output_shapes
 �
Read_94/ReadVariableOpReadVariableOpBread_94_disablecopyonread_adam_v_multi_head_attention_1_value_bias^Read_94/DisableCopyOnRead"/device:CPU:0*
_output_shapes

: *
dtype0p
Identity_188IdentityRead_94/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

: g
Identity_189IdentityIdentity_188:output:0"/device:CPU:0*
T0*
_output_shapes

: �
Read_95/DisableCopyOnReadDisableCopyOnReadOread_95_disablecopyonread_adam_m_multi_head_attention_1_attention_output_kernel"/device:CPU:0*
_output_shapes
 �
Read_95/ReadVariableOpReadVariableOpOread_95_disablecopyonread_adam_m_multi_head_attention_1_attention_output_kernel^Read_95/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
: @*
dtype0t
Identity_190IdentityRead_95/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
: @k
Identity_191IdentityIdentity_190:output:0"/device:CPU:0*
T0*"
_output_shapes
: @�
Read_96/DisableCopyOnReadDisableCopyOnReadOread_96_disablecopyonread_adam_v_multi_head_attention_1_attention_output_kernel"/device:CPU:0*
_output_shapes
 �
Read_96/ReadVariableOpReadVariableOpOread_96_disablecopyonread_adam_v_multi_head_attention_1_attention_output_kernel^Read_96/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
: @*
dtype0t
Identity_192IdentityRead_96/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
: @k
Identity_193IdentityIdentity_192:output:0"/device:CPU:0*
T0*"
_output_shapes
: @�
Read_97/DisableCopyOnReadDisableCopyOnReadMread_97_disablecopyonread_adam_m_multi_head_attention_1_attention_output_bias"/device:CPU:0*
_output_shapes
 �
Read_97/ReadVariableOpReadVariableOpMread_97_disablecopyonread_adam_m_multi_head_attention_1_attention_output_bias^Read_97/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_194IdentityRead_97/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_195IdentityIdentity_194:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_98/DisableCopyOnReadDisableCopyOnReadMread_98_disablecopyonread_adam_v_multi_head_attention_1_attention_output_bias"/device:CPU:0*
_output_shapes
 �
Read_98/ReadVariableOpReadVariableOpMread_98_disablecopyonread_adam_v_multi_head_attention_1_attention_output_bias^Read_98/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_196IdentityRead_98/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_197IdentityIdentity_196:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_99/DisableCopyOnReadDisableCopyOnRead<read_99_disablecopyonread_adam_m_layer_normalization_3_gamma"/device:CPU:0*
_output_shapes
 �
Read_99/ReadVariableOpReadVariableOp<read_99_disablecopyonread_adam_m_layer_normalization_3_gamma^Read_99/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0l
Identity_198IdentityRead_99/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_199IdentityIdentity_198:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_100/DisableCopyOnReadDisableCopyOnRead=read_100_disablecopyonread_adam_v_layer_normalization_3_gamma"/device:CPU:0*
_output_shapes
 �
Read_100/ReadVariableOpReadVariableOp=read_100_disablecopyonread_adam_v_layer_normalization_3_gamma^Read_100/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0m
Identity_200IdentityRead_100/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_201IdentityIdentity_200:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_101/DisableCopyOnReadDisableCopyOnRead<read_101_disablecopyonread_adam_m_layer_normalization_3_beta"/device:CPU:0*
_output_shapes
 �
Read_101/ReadVariableOpReadVariableOp<read_101_disablecopyonread_adam_m_layer_normalization_3_beta^Read_101/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0m
Identity_202IdentityRead_101/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_203IdentityIdentity_202:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_102/DisableCopyOnReadDisableCopyOnRead<read_102_disablecopyonread_adam_v_layer_normalization_3_beta"/device:CPU:0*
_output_shapes
 �
Read_102/ReadVariableOpReadVariableOp<read_102_disablecopyonread_adam_v_layer_normalization_3_beta^Read_102/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0m
Identity_204IdentityRead_102/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_205IdentityIdentity_204:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_103/DisableCopyOnReadDisableCopyOnRead0read_103_disablecopyonread_adam_m_dense_2_kernel"/device:CPU:0*
_output_shapes
 �
Read_103/ReadVariableOpReadVariableOp0read_103_disablecopyonread_adam_m_dense_2_kernel^Read_103/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	@�*
dtype0r
Identity_206IdentityRead_103/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	@�h
Identity_207IdentityIdentity_206:output:0"/device:CPU:0*
T0*
_output_shapes
:	@��
Read_104/DisableCopyOnReadDisableCopyOnRead0read_104_disablecopyonread_adam_v_dense_2_kernel"/device:CPU:0*
_output_shapes
 �
Read_104/ReadVariableOpReadVariableOp0read_104_disablecopyonread_adam_v_dense_2_kernel^Read_104/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	@�*
dtype0r
Identity_208IdentityRead_104/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	@�h
Identity_209IdentityIdentity_208:output:0"/device:CPU:0*
T0*
_output_shapes
:	@��
Read_105/DisableCopyOnReadDisableCopyOnRead.read_105_disablecopyonread_adam_m_dense_2_bias"/device:CPU:0*
_output_shapes
 �
Read_105/ReadVariableOpReadVariableOp.read_105_disablecopyonread_adam_m_dense_2_bias^Read_105/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0n
Identity_210IdentityRead_105/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_211IdentityIdentity_210:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_106/DisableCopyOnReadDisableCopyOnRead.read_106_disablecopyonread_adam_v_dense_2_bias"/device:CPU:0*
_output_shapes
 �
Read_106/ReadVariableOpReadVariableOp.read_106_disablecopyonread_adam_v_dense_2_bias^Read_106/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0n
Identity_212IdentityRead_106/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�d
Identity_213IdentityIdentity_212:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_107/DisableCopyOnReadDisableCopyOnRead0read_107_disablecopyonread_adam_m_dense_3_kernel"/device:CPU:0*
_output_shapes
 �
Read_107/ReadVariableOpReadVariableOp0read_107_disablecopyonread_adam_m_dense_3_kernel^Read_107/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�@*
dtype0r
Identity_214IdentityRead_107/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�@h
Identity_215IdentityIdentity_214:output:0"/device:CPU:0*
T0*
_output_shapes
:	�@�
Read_108/DisableCopyOnReadDisableCopyOnRead0read_108_disablecopyonread_adam_v_dense_3_kernel"/device:CPU:0*
_output_shapes
 �
Read_108/ReadVariableOpReadVariableOp0read_108_disablecopyonread_adam_v_dense_3_kernel^Read_108/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�@*
dtype0r
Identity_216IdentityRead_108/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�@h
Identity_217IdentityIdentity_216:output:0"/device:CPU:0*
T0*
_output_shapes
:	�@�
Read_109/DisableCopyOnReadDisableCopyOnRead.read_109_disablecopyonread_adam_m_dense_3_bias"/device:CPU:0*
_output_shapes
 �
Read_109/ReadVariableOpReadVariableOp.read_109_disablecopyonread_adam_m_dense_3_bias^Read_109/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0m
Identity_218IdentityRead_109/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_219IdentityIdentity_218:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_110/DisableCopyOnReadDisableCopyOnRead.read_110_disablecopyonread_adam_v_dense_3_bias"/device:CPU:0*
_output_shapes
 �
Read_110/ReadVariableOpReadVariableOp.read_110_disablecopyonread_adam_v_dense_3_bias^Read_110/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0m
Identity_220IdentityRead_110/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_221IdentityIdentity_220:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_111/DisableCopyOnReadDisableCopyOnRead=read_111_disablecopyonread_adam_m_layer_normalization_4_gamma"/device:CPU:0*
_output_shapes
 �
Read_111/ReadVariableOpReadVariableOp=read_111_disablecopyonread_adam_m_layer_normalization_4_gamma^Read_111/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0m
Identity_222IdentityRead_111/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_223IdentityIdentity_222:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_112/DisableCopyOnReadDisableCopyOnRead=read_112_disablecopyonread_adam_v_layer_normalization_4_gamma"/device:CPU:0*
_output_shapes
 �
Read_112/ReadVariableOpReadVariableOp=read_112_disablecopyonread_adam_v_layer_normalization_4_gamma^Read_112/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0m
Identity_224IdentityRead_112/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_225IdentityIdentity_224:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_113/DisableCopyOnReadDisableCopyOnRead<read_113_disablecopyonread_adam_m_layer_normalization_4_beta"/device:CPU:0*
_output_shapes
 �
Read_113/ReadVariableOpReadVariableOp<read_113_disablecopyonread_adam_m_layer_normalization_4_beta^Read_113/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0m
Identity_226IdentityRead_113/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_227IdentityIdentity_226:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_114/DisableCopyOnReadDisableCopyOnRead<read_114_disablecopyonread_adam_v_layer_normalization_4_beta"/device:CPU:0*
_output_shapes
 �
Read_114/ReadVariableOpReadVariableOp<read_114_disablecopyonread_adam_v_layer_normalization_4_beta^Read_114/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0m
Identity_228IdentityRead_114/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@c
Identity_229IdentityIdentity_228:output:0"/device:CPU:0*
T0*
_output_shapes
:@�
Read_115/DisableCopyOnReadDisableCopyOnRead0read_115_disablecopyonread_adam_m_dense_4_kernel"/device:CPU:0*
_output_shapes
 �
Read_115/ReadVariableOpReadVariableOp0read_115_disablecopyonread_adam_m_dense_4_kernel^Read_115/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0q
Identity_230IdentityRead_115/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@g
Identity_231IdentityIdentity_230:output:0"/device:CPU:0*
T0*
_output_shapes

:@�
Read_116/DisableCopyOnReadDisableCopyOnRead0read_116_disablecopyonread_adam_v_dense_4_kernel"/device:CPU:0*
_output_shapes
 �
Read_116/ReadVariableOpReadVariableOp0read_116_disablecopyonread_adam_v_dense_4_kernel^Read_116/DisableCopyOnRead"/device:CPU:0*
_output_shapes

:@*
dtype0q
Identity_232IdentityRead_116/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes

:@g
Identity_233IdentityIdentity_232:output:0"/device:CPU:0*
T0*
_output_shapes

:@�
Read_117/DisableCopyOnReadDisableCopyOnRead.read_117_disablecopyonread_adam_m_dense_4_bias"/device:CPU:0*
_output_shapes
 �
Read_117/ReadVariableOpReadVariableOp.read_117_disablecopyonread_adam_m_dense_4_bias^Read_117/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0m
Identity_234IdentityRead_117/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_235IdentityIdentity_234:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_118/DisableCopyOnReadDisableCopyOnRead.read_118_disablecopyonread_adam_v_dense_4_bias"/device:CPU:0*
_output_shapes
 �
Read_118/ReadVariableOpReadVariableOp.read_118_disablecopyonread_adam_v_dense_4_bias^Read_118/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0m
Identity_236IdentityRead_118/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:c
Identity_237IdentityIdentity_236:output:0"/device:CPU:0*
T0*
_output_shapes
:x
Read_119/DisableCopyOnReadDisableCopyOnRead"read_119_disablecopyonread_total_4"/device:CPU:0*
_output_shapes
 �
Read_119/ReadVariableOpReadVariableOp"read_119_disablecopyonread_total_4^Read_119/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0i
Identity_238IdentityRead_119/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_239IdentityIdentity_238:output:0"/device:CPU:0*
T0*
_output_shapes
: x
Read_120/DisableCopyOnReadDisableCopyOnRead"read_120_disablecopyonread_count_4"/device:CPU:0*
_output_shapes
 �
Read_120/ReadVariableOpReadVariableOp"read_120_disablecopyonread_count_4^Read_120/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0i
Identity_240IdentityRead_120/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_241IdentityIdentity_240:output:0"/device:CPU:0*
T0*
_output_shapes
: x
Read_121/DisableCopyOnReadDisableCopyOnRead"read_121_disablecopyonread_total_3"/device:CPU:0*
_output_shapes
 �
Read_121/ReadVariableOpReadVariableOp"read_121_disablecopyonread_total_3^Read_121/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0i
Identity_242IdentityRead_121/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_243IdentityIdentity_242:output:0"/device:CPU:0*
T0*
_output_shapes
: x
Read_122/DisableCopyOnReadDisableCopyOnRead"read_122_disablecopyonread_count_3"/device:CPU:0*
_output_shapes
 �
Read_122/ReadVariableOpReadVariableOp"read_122_disablecopyonread_count_3^Read_122/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0i
Identity_244IdentityRead_122/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_245IdentityIdentity_244:output:0"/device:CPU:0*
T0*
_output_shapes
: x
Read_123/DisableCopyOnReadDisableCopyOnRead"read_123_disablecopyonread_total_2"/device:CPU:0*
_output_shapes
 �
Read_123/ReadVariableOpReadVariableOp"read_123_disablecopyonread_total_2^Read_123/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0i
Identity_246IdentityRead_123/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_247IdentityIdentity_246:output:0"/device:CPU:0*
T0*
_output_shapes
: x
Read_124/DisableCopyOnReadDisableCopyOnRead"read_124_disablecopyonread_count_2"/device:CPU:0*
_output_shapes
 �
Read_124/ReadVariableOpReadVariableOp"read_124_disablecopyonread_count_2^Read_124/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0i
Identity_248IdentityRead_124/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_249IdentityIdentity_248:output:0"/device:CPU:0*
T0*
_output_shapes
: x
Read_125/DisableCopyOnReadDisableCopyOnRead"read_125_disablecopyonread_total_1"/device:CPU:0*
_output_shapes
 �
Read_125/ReadVariableOpReadVariableOp"read_125_disablecopyonread_total_1^Read_125/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0i
Identity_250IdentityRead_125/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_251IdentityIdentity_250:output:0"/device:CPU:0*
T0*
_output_shapes
: x
Read_126/DisableCopyOnReadDisableCopyOnRead"read_126_disablecopyonread_count_1"/device:CPU:0*
_output_shapes
 �
Read_126/ReadVariableOpReadVariableOp"read_126_disablecopyonread_count_1^Read_126/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0i
Identity_252IdentityRead_126/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_253IdentityIdentity_252:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_127/DisableCopyOnReadDisableCopyOnRead read_127_disablecopyonread_total"/device:CPU:0*
_output_shapes
 �
Read_127/ReadVariableOpReadVariableOp read_127_disablecopyonread_total^Read_127/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0i
Identity_254IdentityRead_127/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_255IdentityIdentity_254:output:0"/device:CPU:0*
T0*
_output_shapes
: v
Read_128/DisableCopyOnReadDisableCopyOnRead read_128_disablecopyonread_count"/device:CPU:0*
_output_shapes
 �
Read_128/ReadVariableOpReadVariableOp read_128_disablecopyonread_count^Read_128/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0i
Identity_256IdentityRead_128/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _
Identity_257IdentityIdentity_256:output:0"/device:CPU:0*
T0*
_output_shapes
: �3
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes	
:�*
dtype0*�2
value�2B�2�B5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-6/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/beta/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-8/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-10/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/beta/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB'variables/28/.ATTRIBUTES/VARIABLE_VALUEB'variables/31/.ATTRIBUTES/VARIABLE_VALUEB'variables/32/.ATTRIBUTES/VARIABLE_VALUEB'variables/33/.ATTRIBUTES/VARIABLE_VALUEB'variables/34/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/35/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/36/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/37/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/38/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/39/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/40/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/41/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/42/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/43/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/44/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/45/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/46/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/47/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/48/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/49/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/50/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/51/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/52/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/53/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/54/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/55/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/56/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/57/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/58/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/59/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/60/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/61/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/62/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/63/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/64/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/65/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/66/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/67/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/68/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/69/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/70/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/71/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/72/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/73/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/74/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/75/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/76/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/77/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/78/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes	
:�*
dtype0*�
value�B��B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0Identity_61:output:0Identity_63:output:0Identity_65:output:0Identity_67:output:0Identity_69:output:0Identity_71:output:0Identity_73:output:0Identity_75:output:0Identity_77:output:0Identity_79:output:0Identity_81:output:0Identity_83:output:0Identity_85:output:0Identity_87:output:0Identity_89:output:0Identity_91:output:0Identity_93:output:0Identity_95:output:0Identity_97:output:0Identity_99:output:0Identity_101:output:0Identity_103:output:0Identity_105:output:0Identity_107:output:0Identity_109:output:0Identity_111:output:0Identity_113:output:0Identity_115:output:0Identity_117:output:0Identity_119:output:0Identity_121:output:0Identity_123:output:0Identity_125:output:0Identity_127:output:0Identity_129:output:0Identity_131:output:0Identity_133:output:0Identity_135:output:0Identity_137:output:0Identity_139:output:0Identity_141:output:0Identity_143:output:0Identity_145:output:0Identity_147:output:0Identity_149:output:0Identity_151:output:0Identity_153:output:0Identity_155:output:0Identity_157:output:0Identity_159:output:0Identity_161:output:0Identity_163:output:0Identity_165:output:0Identity_167:output:0Identity_169:output:0Identity_171:output:0Identity_173:output:0Identity_175:output:0Identity_177:output:0Identity_179:output:0Identity_181:output:0Identity_183:output:0Identity_185:output:0Identity_187:output:0Identity_189:output:0Identity_191:output:0Identity_193:output:0Identity_195:output:0Identity_197:output:0Identity_199:output:0Identity_201:output:0Identity_203:output:0Identity_205:output:0Identity_207:output:0Identity_209:output:0Identity_211:output:0Identity_213:output:0Identity_215:output:0Identity_217:output:0Identity_219:output:0Identity_221:output:0Identity_223:output:0Identity_225:output:0Identity_227:output:0Identity_229:output:0Identity_231:output:0Identity_233:output:0Identity_235:output:0Identity_237:output:0Identity_239:output:0Identity_241:output:0Identity_243:output:0Identity_245:output:0Identity_247:output:0Identity_249:output:0Identity_251:output:0Identity_253:output:0Identity_255:output:0Identity_257:output:0savev2_const_1"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *�
dtypes�
�2�	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 j
Identity_258Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: W
Identity_259IdentityIdentity_258:output:0^NoOp*
T0*
_output_shapes
: �6
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_100/DisableCopyOnRead^Read_100/ReadVariableOp^Read_101/DisableCopyOnRead^Read_101/ReadVariableOp^Read_102/DisableCopyOnRead^Read_102/ReadVariableOp^Read_103/DisableCopyOnRead^Read_103/ReadVariableOp^Read_104/DisableCopyOnRead^Read_104/ReadVariableOp^Read_105/DisableCopyOnRead^Read_105/ReadVariableOp^Read_106/DisableCopyOnRead^Read_106/ReadVariableOp^Read_107/DisableCopyOnRead^Read_107/ReadVariableOp^Read_108/DisableCopyOnRead^Read_108/ReadVariableOp^Read_109/DisableCopyOnRead^Read_109/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_110/DisableCopyOnRead^Read_110/ReadVariableOp^Read_111/DisableCopyOnRead^Read_111/ReadVariableOp^Read_112/DisableCopyOnRead^Read_112/ReadVariableOp^Read_113/DisableCopyOnRead^Read_113/ReadVariableOp^Read_114/DisableCopyOnRead^Read_114/ReadVariableOp^Read_115/DisableCopyOnRead^Read_115/ReadVariableOp^Read_116/DisableCopyOnRead^Read_116/ReadVariableOp^Read_117/DisableCopyOnRead^Read_117/ReadVariableOp^Read_118/DisableCopyOnRead^Read_118/ReadVariableOp^Read_119/DisableCopyOnRead^Read_119/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_120/DisableCopyOnRead^Read_120/ReadVariableOp^Read_121/DisableCopyOnRead^Read_121/ReadVariableOp^Read_122/DisableCopyOnRead^Read_122/ReadVariableOp^Read_123/DisableCopyOnRead^Read_123/ReadVariableOp^Read_124/DisableCopyOnRead^Read_124/ReadVariableOp^Read_125/DisableCopyOnRead^Read_125/ReadVariableOp^Read_126/DisableCopyOnRead^Read_126/ReadVariableOp^Read_127/DisableCopyOnRead^Read_127/ReadVariableOp^Read_128/DisableCopyOnRead^Read_128/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_30/DisableCopyOnRead^Read_30/ReadVariableOp^Read_31/DisableCopyOnRead^Read_31/ReadVariableOp^Read_32/DisableCopyOnRead^Read_32/ReadVariableOp^Read_33/DisableCopyOnRead^Read_33/ReadVariableOp^Read_34/DisableCopyOnRead^Read_34/ReadVariableOp^Read_35/DisableCopyOnRead^Read_35/ReadVariableOp^Read_36/DisableCopyOnRead^Read_36/ReadVariableOp^Read_37/DisableCopyOnRead^Read_37/ReadVariableOp^Read_38/DisableCopyOnRead^Read_38/ReadVariableOp^Read_39/DisableCopyOnRead^Read_39/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_40/DisableCopyOnRead^Read_40/ReadVariableOp^Read_41/DisableCopyOnRead^Read_41/ReadVariableOp^Read_42/DisableCopyOnRead^Read_42/ReadVariableOp^Read_43/DisableCopyOnRead^Read_43/ReadVariableOp^Read_44/DisableCopyOnRead^Read_44/ReadVariableOp^Read_45/DisableCopyOnRead^Read_45/ReadVariableOp^Read_46/DisableCopyOnRead^Read_46/ReadVariableOp^Read_47/DisableCopyOnRead^Read_47/ReadVariableOp^Read_48/DisableCopyOnRead^Read_48/ReadVariableOp^Read_49/DisableCopyOnRead^Read_49/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_50/DisableCopyOnRead^Read_50/ReadVariableOp^Read_51/DisableCopyOnRead^Read_51/ReadVariableOp^Read_52/DisableCopyOnRead^Read_52/ReadVariableOp^Read_53/DisableCopyOnRead^Read_53/ReadVariableOp^Read_54/DisableCopyOnRead^Read_54/ReadVariableOp^Read_55/DisableCopyOnRead^Read_55/ReadVariableOp^Read_56/DisableCopyOnRead^Read_56/ReadVariableOp^Read_57/DisableCopyOnRead^Read_57/ReadVariableOp^Read_58/DisableCopyOnRead^Read_58/ReadVariableOp^Read_59/DisableCopyOnRead^Read_59/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_60/DisableCopyOnRead^Read_60/ReadVariableOp^Read_61/DisableCopyOnRead^Read_61/ReadVariableOp^Read_62/DisableCopyOnRead^Read_62/ReadVariableOp^Read_63/DisableCopyOnRead^Read_63/ReadVariableOp^Read_64/DisableCopyOnRead^Read_64/ReadVariableOp^Read_65/DisableCopyOnRead^Read_65/ReadVariableOp^Read_66/DisableCopyOnRead^Read_66/ReadVariableOp^Read_67/DisableCopyOnRead^Read_67/ReadVariableOp^Read_68/DisableCopyOnRead^Read_68/ReadVariableOp^Read_69/DisableCopyOnRead^Read_69/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_70/DisableCopyOnRead^Read_70/ReadVariableOp^Read_71/DisableCopyOnRead^Read_71/ReadVariableOp^Read_72/DisableCopyOnRead^Read_72/ReadVariableOp^Read_73/DisableCopyOnRead^Read_73/ReadVariableOp^Read_74/DisableCopyOnRead^Read_74/ReadVariableOp^Read_75/DisableCopyOnRead^Read_75/ReadVariableOp^Read_76/DisableCopyOnRead^Read_76/ReadVariableOp^Read_77/DisableCopyOnRead^Read_77/ReadVariableOp^Read_78/DisableCopyOnRead^Read_78/ReadVariableOp^Read_79/DisableCopyOnRead^Read_79/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_80/DisableCopyOnRead^Read_80/ReadVariableOp^Read_81/DisableCopyOnRead^Read_81/ReadVariableOp^Read_82/DisableCopyOnRead^Read_82/ReadVariableOp^Read_83/DisableCopyOnRead^Read_83/ReadVariableOp^Read_84/DisableCopyOnRead^Read_84/ReadVariableOp^Read_85/DisableCopyOnRead^Read_85/ReadVariableOp^Read_86/DisableCopyOnRead^Read_86/ReadVariableOp^Read_87/DisableCopyOnRead^Read_87/ReadVariableOp^Read_88/DisableCopyOnRead^Read_88/ReadVariableOp^Read_89/DisableCopyOnRead^Read_89/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp^Read_90/DisableCopyOnRead^Read_90/ReadVariableOp^Read_91/DisableCopyOnRead^Read_91/ReadVariableOp^Read_92/DisableCopyOnRead^Read_92/ReadVariableOp^Read_93/DisableCopyOnRead^Read_93/ReadVariableOp^Read_94/DisableCopyOnRead^Read_94/ReadVariableOp^Read_95/DisableCopyOnRead^Read_95/ReadVariableOp^Read_96/DisableCopyOnRead^Read_96/ReadVariableOp^Read_97/DisableCopyOnRead^Read_97/ReadVariableOp^Read_98/DisableCopyOnRead^Read_98/ReadVariableOp^Read_99/DisableCopyOnRead^Read_99/ReadVariableOp*
_output_shapes
 "%
identity_259Identity_259:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp28
Read_100/DisableCopyOnReadRead_100/DisableCopyOnRead22
Read_100/ReadVariableOpRead_100/ReadVariableOp28
Read_101/DisableCopyOnReadRead_101/DisableCopyOnRead22
Read_101/ReadVariableOpRead_101/ReadVariableOp28
Read_102/DisableCopyOnReadRead_102/DisableCopyOnRead22
Read_102/ReadVariableOpRead_102/ReadVariableOp28
Read_103/DisableCopyOnReadRead_103/DisableCopyOnRead22
Read_103/ReadVariableOpRead_103/ReadVariableOp28
Read_104/DisableCopyOnReadRead_104/DisableCopyOnRead22
Read_104/ReadVariableOpRead_104/ReadVariableOp28
Read_105/DisableCopyOnReadRead_105/DisableCopyOnRead22
Read_105/ReadVariableOpRead_105/ReadVariableOp28
Read_106/DisableCopyOnReadRead_106/DisableCopyOnRead22
Read_106/ReadVariableOpRead_106/ReadVariableOp28
Read_107/DisableCopyOnReadRead_107/DisableCopyOnRead22
Read_107/ReadVariableOpRead_107/ReadVariableOp28
Read_108/DisableCopyOnReadRead_108/DisableCopyOnRead22
Read_108/ReadVariableOpRead_108/ReadVariableOp28
Read_109/DisableCopyOnReadRead_109/DisableCopyOnRead22
Read_109/ReadVariableOpRead_109/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp28
Read_110/DisableCopyOnReadRead_110/DisableCopyOnRead22
Read_110/ReadVariableOpRead_110/ReadVariableOp28
Read_111/DisableCopyOnReadRead_111/DisableCopyOnRead22
Read_111/ReadVariableOpRead_111/ReadVariableOp28
Read_112/DisableCopyOnReadRead_112/DisableCopyOnRead22
Read_112/ReadVariableOpRead_112/ReadVariableOp28
Read_113/DisableCopyOnReadRead_113/DisableCopyOnRead22
Read_113/ReadVariableOpRead_113/ReadVariableOp28
Read_114/DisableCopyOnReadRead_114/DisableCopyOnRead22
Read_114/ReadVariableOpRead_114/ReadVariableOp28
Read_115/DisableCopyOnReadRead_115/DisableCopyOnRead22
Read_115/ReadVariableOpRead_115/ReadVariableOp28
Read_116/DisableCopyOnReadRead_116/DisableCopyOnRead22
Read_116/ReadVariableOpRead_116/ReadVariableOp28
Read_117/DisableCopyOnReadRead_117/DisableCopyOnRead22
Read_117/ReadVariableOpRead_117/ReadVariableOp28
Read_118/DisableCopyOnReadRead_118/DisableCopyOnRead22
Read_118/ReadVariableOpRead_118/ReadVariableOp28
Read_119/DisableCopyOnReadRead_119/DisableCopyOnRead22
Read_119/ReadVariableOpRead_119/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp28
Read_120/DisableCopyOnReadRead_120/DisableCopyOnRead22
Read_120/ReadVariableOpRead_120/ReadVariableOp28
Read_121/DisableCopyOnReadRead_121/DisableCopyOnRead22
Read_121/ReadVariableOpRead_121/ReadVariableOp28
Read_122/DisableCopyOnReadRead_122/DisableCopyOnRead22
Read_122/ReadVariableOpRead_122/ReadVariableOp28
Read_123/DisableCopyOnReadRead_123/DisableCopyOnRead22
Read_123/ReadVariableOpRead_123/ReadVariableOp28
Read_124/DisableCopyOnReadRead_124/DisableCopyOnRead22
Read_124/ReadVariableOpRead_124/ReadVariableOp28
Read_125/DisableCopyOnReadRead_125/DisableCopyOnRead22
Read_125/ReadVariableOpRead_125/ReadVariableOp28
Read_126/DisableCopyOnReadRead_126/DisableCopyOnRead22
Read_126/ReadVariableOpRead_126/ReadVariableOp28
Read_127/DisableCopyOnReadRead_127/DisableCopyOnRead22
Read_127/ReadVariableOpRead_127/ReadVariableOp28
Read_128/DisableCopyOnReadRead_128/DisableCopyOnRead22
Read_128/ReadVariableOpRead_128/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp26
Read_27/DisableCopyOnReadRead_27/DisableCopyOnRead20
Read_27/ReadVariableOpRead_27/ReadVariableOp26
Read_28/DisableCopyOnReadRead_28/DisableCopyOnRead20
Read_28/ReadVariableOpRead_28/ReadVariableOp26
Read_29/DisableCopyOnReadRead_29/DisableCopyOnRead20
Read_29/ReadVariableOpRead_29/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp26
Read_30/DisableCopyOnReadRead_30/DisableCopyOnRead20
Read_30/ReadVariableOpRead_30/ReadVariableOp26
Read_31/DisableCopyOnReadRead_31/DisableCopyOnRead20
Read_31/ReadVariableOpRead_31/ReadVariableOp26
Read_32/DisableCopyOnReadRead_32/DisableCopyOnRead20
Read_32/ReadVariableOpRead_32/ReadVariableOp26
Read_33/DisableCopyOnReadRead_33/DisableCopyOnRead20
Read_33/ReadVariableOpRead_33/ReadVariableOp26
Read_34/DisableCopyOnReadRead_34/DisableCopyOnRead20
Read_34/ReadVariableOpRead_34/ReadVariableOp26
Read_35/DisableCopyOnReadRead_35/DisableCopyOnRead20
Read_35/ReadVariableOpRead_35/ReadVariableOp26
Read_36/DisableCopyOnReadRead_36/DisableCopyOnRead20
Read_36/ReadVariableOpRead_36/ReadVariableOp26
Read_37/DisableCopyOnReadRead_37/DisableCopyOnRead20
Read_37/ReadVariableOpRead_37/ReadVariableOp26
Read_38/DisableCopyOnReadRead_38/DisableCopyOnRead20
Read_38/ReadVariableOpRead_38/ReadVariableOp26
Read_39/DisableCopyOnReadRead_39/DisableCopyOnRead20
Read_39/ReadVariableOpRead_39/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp26
Read_40/DisableCopyOnReadRead_40/DisableCopyOnRead20
Read_40/ReadVariableOpRead_40/ReadVariableOp26
Read_41/DisableCopyOnReadRead_41/DisableCopyOnRead20
Read_41/ReadVariableOpRead_41/ReadVariableOp26
Read_42/DisableCopyOnReadRead_42/DisableCopyOnRead20
Read_42/ReadVariableOpRead_42/ReadVariableOp26
Read_43/DisableCopyOnReadRead_43/DisableCopyOnRead20
Read_43/ReadVariableOpRead_43/ReadVariableOp26
Read_44/DisableCopyOnReadRead_44/DisableCopyOnRead20
Read_44/ReadVariableOpRead_44/ReadVariableOp26
Read_45/DisableCopyOnReadRead_45/DisableCopyOnRead20
Read_45/ReadVariableOpRead_45/ReadVariableOp26
Read_46/DisableCopyOnReadRead_46/DisableCopyOnRead20
Read_46/ReadVariableOpRead_46/ReadVariableOp26
Read_47/DisableCopyOnReadRead_47/DisableCopyOnRead20
Read_47/ReadVariableOpRead_47/ReadVariableOp26
Read_48/DisableCopyOnReadRead_48/DisableCopyOnRead20
Read_48/ReadVariableOpRead_48/ReadVariableOp26
Read_49/DisableCopyOnReadRead_49/DisableCopyOnRead20
Read_49/ReadVariableOpRead_49/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp26
Read_50/DisableCopyOnReadRead_50/DisableCopyOnRead20
Read_50/ReadVariableOpRead_50/ReadVariableOp26
Read_51/DisableCopyOnReadRead_51/DisableCopyOnRead20
Read_51/ReadVariableOpRead_51/ReadVariableOp26
Read_52/DisableCopyOnReadRead_52/DisableCopyOnRead20
Read_52/ReadVariableOpRead_52/ReadVariableOp26
Read_53/DisableCopyOnReadRead_53/DisableCopyOnRead20
Read_53/ReadVariableOpRead_53/ReadVariableOp26
Read_54/DisableCopyOnReadRead_54/DisableCopyOnRead20
Read_54/ReadVariableOpRead_54/ReadVariableOp26
Read_55/DisableCopyOnReadRead_55/DisableCopyOnRead20
Read_55/ReadVariableOpRead_55/ReadVariableOp26
Read_56/DisableCopyOnReadRead_56/DisableCopyOnRead20
Read_56/ReadVariableOpRead_56/ReadVariableOp26
Read_57/DisableCopyOnReadRead_57/DisableCopyOnRead20
Read_57/ReadVariableOpRead_57/ReadVariableOp26
Read_58/DisableCopyOnReadRead_58/DisableCopyOnRead20
Read_58/ReadVariableOpRead_58/ReadVariableOp26
Read_59/DisableCopyOnReadRead_59/DisableCopyOnRead20
Read_59/ReadVariableOpRead_59/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp26
Read_60/DisableCopyOnReadRead_60/DisableCopyOnRead20
Read_60/ReadVariableOpRead_60/ReadVariableOp26
Read_61/DisableCopyOnReadRead_61/DisableCopyOnRead20
Read_61/ReadVariableOpRead_61/ReadVariableOp26
Read_62/DisableCopyOnReadRead_62/DisableCopyOnRead20
Read_62/ReadVariableOpRead_62/ReadVariableOp26
Read_63/DisableCopyOnReadRead_63/DisableCopyOnRead20
Read_63/ReadVariableOpRead_63/ReadVariableOp26
Read_64/DisableCopyOnReadRead_64/DisableCopyOnRead20
Read_64/ReadVariableOpRead_64/ReadVariableOp26
Read_65/DisableCopyOnReadRead_65/DisableCopyOnRead20
Read_65/ReadVariableOpRead_65/ReadVariableOp26
Read_66/DisableCopyOnReadRead_66/DisableCopyOnRead20
Read_66/ReadVariableOpRead_66/ReadVariableOp26
Read_67/DisableCopyOnReadRead_67/DisableCopyOnRead20
Read_67/ReadVariableOpRead_67/ReadVariableOp26
Read_68/DisableCopyOnReadRead_68/DisableCopyOnRead20
Read_68/ReadVariableOpRead_68/ReadVariableOp26
Read_69/DisableCopyOnReadRead_69/DisableCopyOnRead20
Read_69/ReadVariableOpRead_69/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp26
Read_70/DisableCopyOnReadRead_70/DisableCopyOnRead20
Read_70/ReadVariableOpRead_70/ReadVariableOp26
Read_71/DisableCopyOnReadRead_71/DisableCopyOnRead20
Read_71/ReadVariableOpRead_71/ReadVariableOp26
Read_72/DisableCopyOnReadRead_72/DisableCopyOnRead20
Read_72/ReadVariableOpRead_72/ReadVariableOp26
Read_73/DisableCopyOnReadRead_73/DisableCopyOnRead20
Read_73/ReadVariableOpRead_73/ReadVariableOp26
Read_74/DisableCopyOnReadRead_74/DisableCopyOnRead20
Read_74/ReadVariableOpRead_74/ReadVariableOp26
Read_75/DisableCopyOnReadRead_75/DisableCopyOnRead20
Read_75/ReadVariableOpRead_75/ReadVariableOp26
Read_76/DisableCopyOnReadRead_76/DisableCopyOnRead20
Read_76/ReadVariableOpRead_76/ReadVariableOp26
Read_77/DisableCopyOnReadRead_77/DisableCopyOnRead20
Read_77/ReadVariableOpRead_77/ReadVariableOp26
Read_78/DisableCopyOnReadRead_78/DisableCopyOnRead20
Read_78/ReadVariableOpRead_78/ReadVariableOp26
Read_79/DisableCopyOnReadRead_79/DisableCopyOnRead20
Read_79/ReadVariableOpRead_79/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp26
Read_80/DisableCopyOnReadRead_80/DisableCopyOnRead20
Read_80/ReadVariableOpRead_80/ReadVariableOp26
Read_81/DisableCopyOnReadRead_81/DisableCopyOnRead20
Read_81/ReadVariableOpRead_81/ReadVariableOp26
Read_82/DisableCopyOnReadRead_82/DisableCopyOnRead20
Read_82/ReadVariableOpRead_82/ReadVariableOp26
Read_83/DisableCopyOnReadRead_83/DisableCopyOnRead20
Read_83/ReadVariableOpRead_83/ReadVariableOp26
Read_84/DisableCopyOnReadRead_84/DisableCopyOnRead20
Read_84/ReadVariableOpRead_84/ReadVariableOp26
Read_85/DisableCopyOnReadRead_85/DisableCopyOnRead20
Read_85/ReadVariableOpRead_85/ReadVariableOp26
Read_86/DisableCopyOnReadRead_86/DisableCopyOnRead20
Read_86/ReadVariableOpRead_86/ReadVariableOp26
Read_87/DisableCopyOnReadRead_87/DisableCopyOnRead20
Read_87/ReadVariableOpRead_87/ReadVariableOp26
Read_88/DisableCopyOnReadRead_88/DisableCopyOnRead20
Read_88/ReadVariableOpRead_88/ReadVariableOp26
Read_89/DisableCopyOnReadRead_89/DisableCopyOnRead20
Read_89/ReadVariableOpRead_89/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp26
Read_90/DisableCopyOnReadRead_90/DisableCopyOnRead20
Read_90/ReadVariableOpRead_90/ReadVariableOp26
Read_91/DisableCopyOnReadRead_91/DisableCopyOnRead20
Read_91/ReadVariableOpRead_91/ReadVariableOp26
Read_92/DisableCopyOnReadRead_92/DisableCopyOnRead20
Read_92/ReadVariableOpRead_92/ReadVariableOp26
Read_93/DisableCopyOnReadRead_93/DisableCopyOnRead20
Read_93/ReadVariableOpRead_93/ReadVariableOp26
Read_94/DisableCopyOnReadRead_94/DisableCopyOnRead20
Read_94/ReadVariableOpRead_94/ReadVariableOp26
Read_95/DisableCopyOnReadRead_95/DisableCopyOnRead20
Read_95/ReadVariableOpRead_95/ReadVariableOp26
Read_96/DisableCopyOnReadRead_96/DisableCopyOnRead20
Read_96/ReadVariableOpRead_96/ReadVariableOp26
Read_97/DisableCopyOnReadRead_97/DisableCopyOnRead20
Read_97/ReadVariableOpRead_97/ReadVariableOp26
Read_98/DisableCopyOnReadRead_98/DisableCopyOnRead20
Read_98/ReadVariableOpRead_98/ReadVariableOp26
Read_99/DisableCopyOnReadRead_99/DisableCopyOnRead20
Read_99/ReadVariableOpRead_99/ReadVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:95
3
_user_specified_namelayer_normalization/gamma:84
2
_user_specified_namelayer_normalization/beta:;7
5
_user_specified_namelayer_normalization_1/gamma::6
4
_user_specified_namelayer_normalization_1/beta:;7
5
_user_specified_namelayer_normalization_2/gamma::6
4
_user_specified_namelayer_normalization_2/beta:;7
5
_user_specified_namelayer_normalization_3/gamma::6
4
_user_specified_namelayer_normalization_3/beta:;	7
5
_user_specified_namelayer_normalization_4/gamma::
6
4
_user_specified_namelayer_normalization_4/beta:.*
(
_user_specified_namedense_4/kernel:,(
&
_user_specified_namedense_4/bias:?;
9
_user_specified_name!tubelet_embedding/conv3d/kernel:=9
7
_user_specified_nametubelet_embedding/conv3d/bias:GC
A
_user_specified_name)'positional_encoder/embedding/embeddings:A=
;
_user_specified_name#!multi_head_attention/query/kernel:?;
9
_user_specified_name!multi_head_attention/query/bias:?;
9
_user_specified_name!multi_head_attention/key/kernel:=9
7
_user_specified_namemulti_head_attention/key/bias:A=
;
_user_specified_name#!multi_head_attention/value/kernel:?;
9
_user_specified_name!multi_head_attention/value/bias:LH
F
_user_specified_name.,multi_head_attention/attention_output/kernel:JF
D
_user_specified_name,*multi_head_attention/attention_output/bias:,(
&
_user_specified_namedense/kernel:*&
$
_user_specified_name
dense/bias:.*
(
_user_specified_namedense_1/kernel:,(
&
_user_specified_namedense_1/bias:C?
=
_user_specified_name%#multi_head_attention_1/query/kernel:A=
;
_user_specified_name#!multi_head_attention_1/query/bias:A=
;
_user_specified_name#!multi_head_attention_1/key/kernel:?;
9
_user_specified_name!multi_head_attention_1/key/bias:C ?
=
_user_specified_name%#multi_head_attention_1/value/kernel:A!=
;
_user_specified_name#!multi_head_attention_1/value/bias:N"J
H
_user_specified_name0.multi_head_attention_1/attention_output/kernel:L#H
F
_user_specified_name.,multi_head_attention_1/attention_output/bias:.$*
(
_user_specified_namedense_2/kernel:,%(
&
_user_specified_namedense_2/bias:.&*
(
_user_specified_namedense_3/kernel:,'(
&
_user_specified_namedense_3/bias:)(%
#
_user_specified_name	iteration:-))
'
_user_specified_namelearning_rate:F*B
@
_user_specified_name(&Adam/m/tubelet_embedding/conv3d/kernel:F+B
@
_user_specified_name(&Adam/v/tubelet_embedding/conv3d/kernel:D,@
>
_user_specified_name&$Adam/m/tubelet_embedding/conv3d/bias:D-@
>
_user_specified_name&$Adam/v/tubelet_embedding/conv3d/bias:N.J
H
_user_specified_name0.Adam/m/positional_encoder/embedding/embeddings:N/J
H
_user_specified_name0.Adam/v/positional_encoder/embedding/embeddings:@0<
:
_user_specified_name" Adam/m/layer_normalization/gamma:@1<
:
_user_specified_name" Adam/v/layer_normalization/gamma:?2;
9
_user_specified_name!Adam/m/layer_normalization/beta:?3;
9
_user_specified_name!Adam/v/layer_normalization/beta:H4D
B
_user_specified_name*(Adam/m/multi_head_attention/query/kernel:H5D
B
_user_specified_name*(Adam/v/multi_head_attention/query/kernel:F6B
@
_user_specified_name(&Adam/m/multi_head_attention/query/bias:F7B
@
_user_specified_name(&Adam/v/multi_head_attention/query/bias:F8B
@
_user_specified_name(&Adam/m/multi_head_attention/key/kernel:F9B
@
_user_specified_name(&Adam/v/multi_head_attention/key/kernel:D:@
>
_user_specified_name&$Adam/m/multi_head_attention/key/bias:D;@
>
_user_specified_name&$Adam/v/multi_head_attention/key/bias:H<D
B
_user_specified_name*(Adam/m/multi_head_attention/value/kernel:H=D
B
_user_specified_name*(Adam/v/multi_head_attention/value/kernel:F>B
@
_user_specified_name(&Adam/m/multi_head_attention/value/bias:F?B
@
_user_specified_name(&Adam/v/multi_head_attention/value/bias:S@O
M
_user_specified_name53Adam/m/multi_head_attention/attention_output/kernel:SAO
M
_user_specified_name53Adam/v/multi_head_attention/attention_output/kernel:QBM
K
_user_specified_name31Adam/m/multi_head_attention/attention_output/bias:QCM
K
_user_specified_name31Adam/v/multi_head_attention/attention_output/bias:BD>
<
_user_specified_name$"Adam/m/layer_normalization_1/gamma:BE>
<
_user_specified_name$"Adam/v/layer_normalization_1/gamma:AF=
;
_user_specified_name#!Adam/m/layer_normalization_1/beta:AG=
;
_user_specified_name#!Adam/v/layer_normalization_1/beta:3H/
-
_user_specified_nameAdam/m/dense/kernel:3I/
-
_user_specified_nameAdam/v/dense/kernel:1J-
+
_user_specified_nameAdam/m/dense/bias:1K-
+
_user_specified_nameAdam/v/dense/bias:5L1
/
_user_specified_nameAdam/m/dense_1/kernel:5M1
/
_user_specified_nameAdam/v/dense_1/kernel:3N/
-
_user_specified_nameAdam/m/dense_1/bias:3O/
-
_user_specified_nameAdam/v/dense_1/bias:BP>
<
_user_specified_name$"Adam/m/layer_normalization_2/gamma:BQ>
<
_user_specified_name$"Adam/v/layer_normalization_2/gamma:AR=
;
_user_specified_name#!Adam/m/layer_normalization_2/beta:AS=
;
_user_specified_name#!Adam/v/layer_normalization_2/beta:JTF
D
_user_specified_name,*Adam/m/multi_head_attention_1/query/kernel:JUF
D
_user_specified_name,*Adam/v/multi_head_attention_1/query/kernel:HVD
B
_user_specified_name*(Adam/m/multi_head_attention_1/query/bias:HWD
B
_user_specified_name*(Adam/v/multi_head_attention_1/query/bias:HXD
B
_user_specified_name*(Adam/m/multi_head_attention_1/key/kernel:HYD
B
_user_specified_name*(Adam/v/multi_head_attention_1/key/kernel:FZB
@
_user_specified_name(&Adam/m/multi_head_attention_1/key/bias:F[B
@
_user_specified_name(&Adam/v/multi_head_attention_1/key/bias:J\F
D
_user_specified_name,*Adam/m/multi_head_attention_1/value/kernel:J]F
D
_user_specified_name,*Adam/v/multi_head_attention_1/value/kernel:H^D
B
_user_specified_name*(Adam/m/multi_head_attention_1/value/bias:H_D
B
_user_specified_name*(Adam/v/multi_head_attention_1/value/bias:U`Q
O
_user_specified_name75Adam/m/multi_head_attention_1/attention_output/kernel:UaQ
O
_user_specified_name75Adam/v/multi_head_attention_1/attention_output/kernel:SbO
M
_user_specified_name53Adam/m/multi_head_attention_1/attention_output/bias:ScO
M
_user_specified_name53Adam/v/multi_head_attention_1/attention_output/bias:Bd>
<
_user_specified_name$"Adam/m/layer_normalization_3/gamma:Be>
<
_user_specified_name$"Adam/v/layer_normalization_3/gamma:Af=
;
_user_specified_name#!Adam/m/layer_normalization_3/beta:Ag=
;
_user_specified_name#!Adam/v/layer_normalization_3/beta:5h1
/
_user_specified_nameAdam/m/dense_2/kernel:5i1
/
_user_specified_nameAdam/v/dense_2/kernel:3j/
-
_user_specified_nameAdam/m/dense_2/bias:3k/
-
_user_specified_nameAdam/v/dense_2/bias:5l1
/
_user_specified_nameAdam/m/dense_3/kernel:5m1
/
_user_specified_nameAdam/v/dense_3/kernel:3n/
-
_user_specified_nameAdam/m/dense_3/bias:3o/
-
_user_specified_nameAdam/v/dense_3/bias:Bp>
<
_user_specified_name$"Adam/m/layer_normalization_4/gamma:Bq>
<
_user_specified_name$"Adam/v/layer_normalization_4/gamma:Ar=
;
_user_specified_name#!Adam/m/layer_normalization_4/beta:As=
;
_user_specified_name#!Adam/v/layer_normalization_4/beta:5t1
/
_user_specified_nameAdam/m/dense_4/kernel:5u1
/
_user_specified_nameAdam/v/dense_4/kernel:3v/
-
_user_specified_nameAdam/m/dense_4/bias:3w/
-
_user_specified_nameAdam/v/dense_4/bias:'x#
!
_user_specified_name	total_4:'y#
!
_user_specified_name	count_4:'z#
!
_user_specified_name	total_3:'{#
!
_user_specified_name	count_3:'|#
!
_user_specified_name	total_2:'}#
!
_user_specified_name	count_2:'~#
!
_user_specified_name	total_1:'#
!
_user_specified_name	count_1:&�!

_user_specified_nametotal:&�!

_user_specified_namecount:@�;

_output_shapes
: 
!
_user_specified_name	Const_1
�
�
L__inference_tubelet_embedding_layer_call_and_return_conditional_losses_23931

videosC
%conv3d_conv3d_readvariableop_resource:@4
&conv3d_biasadd_readvariableop_resource:@
identity��conv3d/BiasAdd/ReadVariableOp�conv3d/Conv3D/ReadVariableOp�
conv3d/Conv3D/ReadVariableOpReadVariableOp%conv3d_conv3d_readvariableop_resource**
_output_shapes
:@*
dtype0�
conv3d/Conv3DConv3Dvideos$conv3d/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������@*
paddingVALID*
strides	
�
conv3d/BiasAdd/ReadVariableOpReadVariableOp&conv3d_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv3d/BiasAddBiasAddconv3d/Conv3D:output:0%conv3d/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������@b
reshape/ShapeShapeconv3d/BiasAdd:output:0*
T0*
_output_shapes
::��e
reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
reshape/strided_sliceStridedSlicereshape/Shape:output:0$reshape/strided_slice/stack:output:0&reshape/strided_slice/stack_1:output:0&reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskb
reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
���������Y
reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :@�
reshape/Reshape/shapePackreshape/strided_slice:output:0 reshape/Reshape/shape/1:output:0 reshape/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:�
reshape/ReshapeReshapeconv3d/BiasAdd:output:0reshape/Reshape/shape:output:0*
T0*,
_output_shapes
:����������
@l
IdentityIdentityreshape/Reshape:output:0^NoOp*
T0*,
_output_shapes
:����������
@a
NoOpNoOp^conv3d/BiasAdd/ReadVariableOp^conv3d/Conv3D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:���������*��: : 2>
conv3d/BiasAdd/ReadVariableOpconv3d/BiasAdd/ReadVariableOp2<
conv3d/Conv3D/ReadVariableOpconv3d/Conv3D/ReadVariableOp:] Y
5
_output_shapes#
!:���������*��
 
_user_specified_namevideos:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�4
�
Q__inference_multi_head_attention_1_layer_call_and_return_conditional_losses_23177	
query	
valueA
+query_einsum_einsum_readvariableop_resource:@ 3
!query_add_readvariableop_resource: ?
)key_einsum_einsum_readvariableop_resource:@ 1
key_add_readvariableop_resource: A
+value_einsum_einsum_readvariableop_resource:@ 3
!value_add_readvariableop_resource: L
6attention_output_einsum_einsum_readvariableop_resource: @:
,attention_output_add_readvariableop_resource:@
identity��#attention_output/add/ReadVariableOp�-attention_output/einsum/Einsum/ReadVariableOp�key/add/ReadVariableOp� key/einsum/Einsum/ReadVariableOp�query/add/ReadVariableOp�"query/einsum/Einsum/ReadVariableOp�value/add/ReadVariableOp�"value/einsum/Einsum/ReadVariableOp�
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*"
_output_shapes
:@ *
dtype0�
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:����������
 *
equationabc,cde->abdez
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes

: *
dtype0�
	query/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������
 �
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*"
_output_shapes
:@ *
dtype0�
key/einsum/EinsumEinsumvalue(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:����������
 *
equationabc,cde->abdev
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes

: *
dtype0�
key/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������
 �
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*"
_output_shapes
:@ *
dtype0�
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:����������
 *
equationabc,cde->abdez
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes

: *
dtype0�
	value/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������
 J
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *�5>d
MulMulquery/add:z:0Mul/y:output:0*
T0*0
_output_shapes
:����������
 �
einsum/EinsumEinsumkey/add:z:0Mul:z:0*
N*
T0*1
_output_shapes
:����������
�
*
equationaecd,abcd->acben
softmax/SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*1
_output_shapes
:����������
�
Z
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?�
dropout/dropout/MulMulsoftmax/Softmax:softmax:0dropout/dropout/Const:output:0*
T0*1
_output_shapes
:����������
�
l
dropout/dropout/ShapeShapesoftmax/Softmax:softmax:0*
T0*
_output_shapes
::���
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*1
_output_shapes
:����������
�
*
dtype0*

seedMc
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*1
_output_shapes
:����������
�
\
dropout/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/dropout/SelectV2SelectV2 dropout/dropout/GreaterEqual:z:0dropout/dropout/Mul:z:0 dropout/dropout/Const_1:output:0*
T0*1
_output_shapes
:����������
�
�
einsum_1/EinsumEinsum!dropout/dropout/SelectV2:output:0value/add:z:0*
N*
T0*0
_output_shapes
:����������
 *
equationacbe,aecd->abcd�
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
: @*
dtype0�
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:����������
@*
equationabcd,cde->abe�
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes
:@*
dtype0�
attention_output/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������
@l
IdentityIdentityattention_output/add:z:0^NoOp*
T0*,
_output_shapes
:����������
@�
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:����������
@:����������
@: : : : : : : : 2J
#attention_output/add/ReadVariableOp#attention_output/add/ReadVariableOp2^
-attention_output/einsum/Einsum/ReadVariableOp-attention_output/einsum/Einsum/ReadVariableOp20
key/add/ReadVariableOpkey/add/ReadVariableOp2D
 key/einsum/Einsum/ReadVariableOp key/einsum/Einsum/ReadVariableOp24
query/add/ReadVariableOpquery/add/ReadVariableOp2H
"query/einsum/Einsum/ReadVariableOp"query/einsum/Einsum/ReadVariableOp24
value/add/ReadVariableOpvalue/add/ReadVariableOp2H
"value/einsum/Einsum/ReadVariableOp"value/einsum/Einsum/ReadVariableOp:S O
,
_output_shapes
:����������
@

_user_specified_namequery:SO
,
_output_shapes
:����������
@

_user_specified_namevalue:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource
�!
�	
%__inference_model_layer_call_fn_23546
input_1%
unknown:@
	unknown_0:@
	unknown_1
	unknown_2:	�
@
	unknown_3:@
	unknown_4:@
	unknown_5:@ 
	unknown_6: 
	unknown_7:@ 
	unknown_8: 
	unknown_9:@ 

unknown_10:  

unknown_11: @

unknown_12:@

unknown_13:@

unknown_14:@

unknown_15:	@�

unknown_16:	�

unknown_17:	�@

unknown_18:@

unknown_19:@

unknown_20:@ 

unknown_21:@ 

unknown_22:  

unknown_23:@ 

unknown_24:  

unknown_25:@ 

unknown_26:  

unknown_27: @

unknown_28:@

unknown_29:@

unknown_30:@

unknown_31:	@�

unknown_32:	�

unknown_33:	�@

unknown_34:@

unknown_35:@

unknown_36:@

unknown_37:@

unknown_38:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38*4
Tin-
+2)*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*I
_read_only_resource_inputs+
)'	
 !"#$%&'(*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_23290o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapesx
v:���������*��: : :�
: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
5
_output_shapes#
!:���������*��
!
_user_specified_name	input_1:%!

_user_specified_name23464:%!

_user_specified_name23466:B>

_output_shapes	
:�


_user_specified_name23468:%!

_user_specified_name23470:%!

_user_specified_name23472:%!

_user_specified_name23474:%!

_user_specified_name23476:%!

_user_specified_name23478:%	!

_user_specified_name23480:%
!

_user_specified_name23482:%!

_user_specified_name23484:%!

_user_specified_name23486:%!

_user_specified_name23488:%!

_user_specified_name23490:%!

_user_specified_name23492:%!

_user_specified_name23494:%!

_user_specified_name23496:%!

_user_specified_name23498:%!

_user_specified_name23500:%!

_user_specified_name23502:%!

_user_specified_name23504:%!

_user_specified_name23506:%!

_user_specified_name23508:%!

_user_specified_name23510:%!

_user_specified_name23512:%!

_user_specified_name23514:%!

_user_specified_name23516:%!

_user_specified_name23518:%!

_user_specified_name23520:%!

_user_specified_name23522:%!

_user_specified_name23524:% !

_user_specified_name23526:%!!

_user_specified_name23528:%"!

_user_specified_name23530:%#!

_user_specified_name23532:%$!

_user_specified_name23534:%%!

_user_specified_name23536:%&!

_user_specified_name23538:%'!

_user_specified_name23540:%(!

_user_specified_name23542
�
�
6__inference_multi_head_attention_1_layer_call_fn_24211	
query	
value
unknown:@ 
	unknown_0: 
	unknown_1:@ 
	unknown_2: 
	unknown_3:@ 
	unknown_4: 
	unknown_5: @
	unknown_6:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallqueryvalueunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2
*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������
@**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_multi_head_attention_1_layer_call_and_return_conditional_losses_23177t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:����������
@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:����������
@:����������
@: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
,
_output_shapes
:����������
@

_user_specified_namequery:SO
,
_output_shapes
:����������
@

_user_specified_namevalue:%!

_user_specified_name24193:%!

_user_specified_name24195:%!

_user_specified_name24197:%!

_user_specified_name24199:%!

_user_specified_name24201:%!

_user_specified_name24203:%!

_user_specified_name24205:%	!

_user_specified_name24207
�
�
G__inference_sequential_1_layer_call_and_return_conditional_losses_22875
dense_2_input 
dense_2_22864:	@�
dense_2_22866:	� 
dense_3_22869:	�@
dense_3_22871:@
identity��dense_2/StatefulPartitionedCall�dense_3/StatefulPartitionedCall�
dense_2/StatefulPartitionedCallStatefulPartitionedCalldense_2_inputdense_2_22864dense_2_22866*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:����������
�*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_22811�
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_22869dense_3_22871*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������
@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_22854|
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:����������
@f
NoOpNoOp ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������
@: : : : 2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:[ W
,
_output_shapes
:����������
@
'
_user_specified_namedense_2_input:%!

_user_specified_name22864:%!

_user_specified_name22866:%!

_user_specified_name22869:%!

_user_specified_name22871
�
�
G__inference_sequential_1_layer_call_and_return_conditional_losses_22861
dense_2_input 
dense_2_22812:	@�
dense_2_22814:	� 
dense_3_22855:	�@
dense_3_22857:@
identity��dense_2/StatefulPartitionedCall�dense_3/StatefulPartitionedCall�
dense_2/StatefulPartitionedCallStatefulPartitionedCalldense_2_inputdense_2_22812dense_2_22814*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:����������
�*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_22811�
dense_3/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0dense_3_22855dense_3_22857*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������
@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_22854|
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:����������
@f
NoOpNoOp ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������
@: : : : 2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:[ W
,
_output_shapes
:����������
@
'
_user_specified_namedense_2_input:%!

_user_specified_name22812:%!

_user_specified_name22814:%!

_user_specified_name22855:%!

_user_specified_name22857
�
�
'__inference_dense_3_layer_call_fn_24577

inputs
unknown:	�@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������
@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_22854t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:����������
@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:����������
�: : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
-
_output_shapes
:����������
�
 
_user_specified_nameinputs:%!

_user_specified_name24571:%!

_user_specified_name24573
�
�
E__inference_sequential_layer_call_and_return_conditional_losses_22713
dense_input
dense_22664:	@�
dense_22666:	� 
dense_1_22707:	�@
dense_1_22709:@
identity��dense/StatefulPartitionedCall�dense_1/StatefulPartitionedCall�
dense/StatefulPartitionedCallStatefulPartitionedCalldense_inputdense_22664dense_22666*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:����������
�*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_22663�
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_22707dense_1_22709*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������
@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_22706|
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:����������
@d
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������
@: : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall:Y U
,
_output_shapes
:����������
@
%
_user_specified_namedense_input:%!

_user_specified_name22664:%!

_user_specified_name22666:%!

_user_specified_name22707:%!

_user_specified_name22709
�
T
8__inference_global_average_pooling1d_layer_call_fn_24401

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:������������������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *\
fWRU
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_22925i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'���������������������������:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs
�
l
@__inference_add_3_layer_call_and_return_conditional_losses_24365
inputs_0
inputs_1
identityW
addAddV2inputs_0inputs_1*
T0*,
_output_shapes
:����������
@T
IdentityIdentityadd:z:0*
T0*,
_output_shapes
:����������
@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:����������
@:����������
@:V R
,
_output_shapes
:����������
@
"
_user_specified_name
inputs_0:VR
,
_output_shapes
:����������
@
"
_user_specified_name
inputs_1
�
h
>__inference_add_layer_call_and_return_conditional_losses_23064

inputs
inputs_1
identityU
addAddV2inputsinputs_1*
T0*,
_output_shapes
:����������
@T
IdentityIdentityadd:z:0*
T0*,
_output_shapes
:����������
@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:����������
@:����������
@:T P
,
_output_shapes
:����������
@
 
_user_specified_nameinputs:TP
,
_output_shapes
:����������
@
 
_user_specified_nameinputs
�
O
#__inference_add_layer_call_fn_24109
inputs_0
inputs_1
identity�
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������
@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *G
fBR@
>__inference_add_layer_call_and_return_conditional_losses_23064e
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:����������
@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:����������
@:����������
@:V R
,
_output_shapes
:����������
@
"
_user_specified_name
inputs_0:VR
,
_output_shapes
:����������
@
"
_user_specified_name
inputs_1
�#
�
B__inference_dense_3_layer_call_and_return_conditional_losses_22854

inputs4
!tensordot_readvariableop_resource:	�@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOp{
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	�@*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       S
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
::��Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:{
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*-
_output_shapes
:����������
��
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:����������
@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������
@O

Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?m
Gelu/mulMulGelu/mul/x:output:0BiasAdd:output:0*
T0*,
_output_shapes
:����������
@P
Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *��?v
Gelu/truedivRealDivBiasAdd:output:0Gelu/Cast/x:output:0*
T0*,
_output_shapes
:����������
@X
Gelu/ErfErfGelu/truediv:z:0*
T0*,
_output_shapes
:����������
@O

Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?k
Gelu/addAddV2Gelu/add/x:output:0Gelu/Erf:y:0*
T0*,
_output_shapes
:����������
@d

Gelu/mul_1MulGelu/mul:z:0Gelu/add:z:0*
T0*,
_output_shapes
:����������
@b
IdentityIdentityGelu/mul_1:z:0^NoOp*
T0*,
_output_shapes
:����������
@V
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:����������
�: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:U Q
-
_output_shapes
:����������
�
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�4
�
O__inference_multi_head_attention_layer_call_and_return_conditional_losses_23041	
query	
valueA
+query_einsum_einsum_readvariableop_resource:@ 3
!query_add_readvariableop_resource: ?
)key_einsum_einsum_readvariableop_resource:@ 1
key_add_readvariableop_resource: A
+value_einsum_einsum_readvariableop_resource:@ 3
!value_add_readvariableop_resource: L
6attention_output_einsum_einsum_readvariableop_resource: @:
,attention_output_add_readvariableop_resource:@
identity��#attention_output/add/ReadVariableOp�-attention_output/einsum/Einsum/ReadVariableOp�key/add/ReadVariableOp� key/einsum/Einsum/ReadVariableOp�query/add/ReadVariableOp�"query/einsum/Einsum/ReadVariableOp�value/add/ReadVariableOp�"value/einsum/Einsum/ReadVariableOp�
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*"
_output_shapes
:@ *
dtype0�
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:����������
 *
equationabc,cde->abdez
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes

: *
dtype0�
	query/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������
 �
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*"
_output_shapes
:@ *
dtype0�
key/einsum/EinsumEinsumvalue(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:����������
 *
equationabc,cde->abdev
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes

: *
dtype0�
key/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������
 �
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*"
_output_shapes
:@ *
dtype0�
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:����������
 *
equationabc,cde->abdez
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes

: *
dtype0�
	value/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������
 J
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *�5>d
MulMulquery/add:z:0Mul/y:output:0*
T0*0
_output_shapes
:����������
 �
einsum/EinsumEinsumkey/add:z:0Mul:z:0*
N*
T0*1
_output_shapes
:����������
�
*
equationaecd,abcd->acben
softmax/SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*1
_output_shapes
:����������
�
Z
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?�
dropout/dropout/MulMulsoftmax/Softmax:softmax:0dropout/dropout/Const:output:0*
T0*1
_output_shapes
:����������
�
l
dropout/dropout/ShapeShapesoftmax/Softmax:softmax:0*
T0*
_output_shapes
::���
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*1
_output_shapes
:����������
�
*
dtype0*

seedMc
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*1
_output_shapes
:����������
�
\
dropout/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/dropout/SelectV2SelectV2 dropout/dropout/GreaterEqual:z:0dropout/dropout/Mul:z:0 dropout/dropout/Const_1:output:0*
T0*1
_output_shapes
:����������
�
�
einsum_1/EinsumEinsum!dropout/dropout/SelectV2:output:0value/add:z:0*
N*
T0*0
_output_shapes
:����������
 *
equationacbe,aecd->abcd�
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
: @*
dtype0�
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:����������
@*
equationabcd,cde->abe�
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes
:@*
dtype0�
attention_output/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������
@l
IdentityIdentityattention_output/add:z:0^NoOp*
T0*,
_output_shapes
:����������
@�
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:����������
@:����������
@: : : : : : : : 2J
#attention_output/add/ReadVariableOp#attention_output/add/ReadVariableOp2^
-attention_output/einsum/Einsum/ReadVariableOp-attention_output/einsum/Einsum/ReadVariableOp20
key/add/ReadVariableOpkey/add/ReadVariableOp2D
 key/einsum/Einsum/ReadVariableOp key/einsum/Einsum/ReadVariableOp24
query/add/ReadVariableOpquery/add/ReadVariableOp2H
"query/einsum/Einsum/ReadVariableOp"query/einsum/Einsum/ReadVariableOp24
value/add/ReadVariableOpvalue/add/ReadVariableOp2H
"value/einsum/Einsum/ReadVariableOp"value/einsum/Einsum/ReadVariableOp:S O
,
_output_shapes
:����������
@

_user_specified_namequery:SO
,
_output_shapes
:����������
@

_user_specified_namevalue:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource
�#
�
B__inference_dense_3_layer_call_and_return_conditional_losses_24615

inputs4
!tensordot_readvariableop_resource:	�@-
biasadd_readvariableop_resource:@
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOp{
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	�@*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       S
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
::��Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:{
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*-
_output_shapes
:����������
��
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������@[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:@Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:����������
@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������
@O

Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?m
Gelu/mulMulGelu/mul/x:output:0BiasAdd:output:0*
T0*,
_output_shapes
:����������
@P
Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *��?v
Gelu/truedivRealDivBiasAdd:output:0Gelu/Cast/x:output:0*
T0*,
_output_shapes
:����������
@X
Gelu/ErfErfGelu/truediv:z:0*
T0*,
_output_shapes
:����������
@O

Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?k
Gelu/addAddV2Gelu/add/x:output:0Gelu/Erf:y:0*
T0*,
_output_shapes
:����������
@d

Gelu/mul_1MulGelu/mul:z:0Gelu/add:z:0*
T0*,
_output_shapes
:����������
@b
IdentityIdentityGelu/mul_1:z:0^NoOp*
T0*,
_output_shapes
:����������
@V
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:����������
�: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:U Q
-
_output_shapes
:����������
�
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
P__inference_layer_normalization_4_layer_call_and_return_conditional_losses_24396

inputs3
%batchnorm_mul_readvariableop_resource:@/
!batchnorm_readvariableop_resource:@
identity��batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:����������
*
	keep_dims(r
moments/StopGradientStopGradientmoments/mean:output:0*
T0*,
_output_shapes
:����������
�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*,
_output_shapes
:����������
@l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:����������
*
	keep_dims(T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*,
_output_shapes
:����������
b
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*,
_output_shapes
:����������
~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype0�
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������
@h
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*,
_output_shapes
:����������
@w
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*,
_output_shapes
:����������
@v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype0�
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*,
_output_shapes
:����������
@w
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*,
_output_shapes
:����������
@g
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*,
_output_shapes
:����������
@\
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������
@: : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:T P
,
_output_shapes
:����������
@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�4
�
Q__inference_multi_head_attention_1_layer_call_and_return_conditional_losses_24275	
query	
valueA
+query_einsum_einsum_readvariableop_resource:@ 3
!query_add_readvariableop_resource: ?
)key_einsum_einsum_readvariableop_resource:@ 1
key_add_readvariableop_resource: A
+value_einsum_einsum_readvariableop_resource:@ 3
!value_add_readvariableop_resource: L
6attention_output_einsum_einsum_readvariableop_resource: @:
,attention_output_add_readvariableop_resource:@
identity��#attention_output/add/ReadVariableOp�-attention_output/einsum/Einsum/ReadVariableOp�key/add/ReadVariableOp� key/einsum/Einsum/ReadVariableOp�query/add/ReadVariableOp�"query/einsum/Einsum/ReadVariableOp�value/add/ReadVariableOp�"value/einsum/Einsum/ReadVariableOp�
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*"
_output_shapes
:@ *
dtype0�
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:����������
 *
equationabc,cde->abdez
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes

: *
dtype0�
	query/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������
 �
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*"
_output_shapes
:@ *
dtype0�
key/einsum/EinsumEinsumvalue(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:����������
 *
equationabc,cde->abdev
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes

: *
dtype0�
key/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������
 �
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*"
_output_shapes
:@ *
dtype0�
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:����������
 *
equationabc,cde->abdez
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes

: *
dtype0�
	value/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������
 J
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *�5>d
MulMulquery/add:z:0Mul/y:output:0*
T0*0
_output_shapes
:����������
 �
einsum/EinsumEinsumkey/add:z:0Mul:z:0*
N*
T0*1
_output_shapes
:����������
�
*
equationaecd,abcd->acben
softmax/SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*1
_output_shapes
:����������
�
Z
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?�
dropout/dropout/MulMulsoftmax/Softmax:softmax:0dropout/dropout/Const:output:0*
T0*1
_output_shapes
:����������
�
l
dropout/dropout/ShapeShapesoftmax/Softmax:softmax:0*
T0*
_output_shapes
::���
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*1
_output_shapes
:����������
�
*
dtype0*

seedMc
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*1
_output_shapes
:����������
�
\
dropout/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/dropout/SelectV2SelectV2 dropout/dropout/GreaterEqual:z:0dropout/dropout/Mul:z:0 dropout/dropout/Const_1:output:0*
T0*1
_output_shapes
:����������
�
�
einsum_1/EinsumEinsum!dropout/dropout/SelectV2:output:0value/add:z:0*
N*
T0*0
_output_shapes
:����������
 *
equationacbe,aecd->abcd�
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
: @*
dtype0�
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:����������
@*
equationabcd,cde->abe�
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes
:@*
dtype0�
attention_output/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������
@l
IdentityIdentityattention_output/add:z:0^NoOp*
T0*,
_output_shapes
:����������
@�
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:����������
@:����������
@: : : : : : : : 2J
#attention_output/add/ReadVariableOp#attention_output/add/ReadVariableOp2^
-attention_output/einsum/Einsum/ReadVariableOp-attention_output/einsum/Einsum/ReadVariableOp20
key/add/ReadVariableOpkey/add/ReadVariableOp2D
 key/einsum/Einsum/ReadVariableOp key/einsum/Einsum/ReadVariableOp24
query/add/ReadVariableOpquery/add/ReadVariableOp2H
"query/einsum/Einsum/ReadVariableOp"query/einsum/Einsum/ReadVariableOp24
value/add/ReadVariableOpvalue/add/ReadVariableOp2H
"value/einsum/Einsum/ReadVariableOp"value/einsum/Einsum/ReadVariableOp:S O
,
_output_shapes
:����������
@

_user_specified_namequery:SO
,
_output_shapes
:����������
@

_user_specified_namevalue:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource
�
�
5__inference_layer_normalization_1_layer_call_fn_24124

inputs
unknown:@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������
@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Y
fTRR
P__inference_layer_normalization_1_layer_call_and_return_conditional_losses_23087t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:����������
@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������
@: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:����������
@
 
_user_specified_nameinputs:%!

_user_specified_name24118:%!

_user_specified_name24120
�	
�
M__inference_positional_encoder_layer_call_and_return_conditional_losses_22967
encoded_tokens
unknown3
 embedding_embedding_lookup_22961:	�
@
identity��embedding/embedding_lookup�
embedding/embedding_lookupResourceGather embedding_embedding_lookup_22961unknown*
Tindices0*3
_class)
'%loc:@embedding/embedding_lookup/22961*
_output_shapes
:	�
@*
dtype0~
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0*
T0*
_output_shapes
:	�
@�
addAddV2encoded_tokens,embedding/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:����������
@[
IdentityIdentityadd:z:0^NoOp*
T0*,
_output_shapes
:����������
@?
NoOpNoOp^embedding/embedding_lookup*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:����������
@:�
: 28
embedding/embedding_lookupembedding/embedding_lookup:\ X
,
_output_shapes
:����������
@
(
_user_specified_nameencoded_tokens:B>

_output_shapes	
:�


_user_specified_name22959:%!

_user_specified_name22961
�,
�
Q__inference_multi_head_attention_1_layer_call_and_return_conditional_losses_23415	
query	
valueA
+query_einsum_einsum_readvariableop_resource:@ 3
!query_add_readvariableop_resource: ?
)key_einsum_einsum_readvariableop_resource:@ 1
key_add_readvariableop_resource: A
+value_einsum_einsum_readvariableop_resource:@ 3
!value_add_readvariableop_resource: L
6attention_output_einsum_einsum_readvariableop_resource: @:
,attention_output_add_readvariableop_resource:@
identity��#attention_output/add/ReadVariableOp�-attention_output/einsum/Einsum/ReadVariableOp�key/add/ReadVariableOp� key/einsum/Einsum/ReadVariableOp�query/add/ReadVariableOp�"query/einsum/Einsum/ReadVariableOp�value/add/ReadVariableOp�"value/einsum/Einsum/ReadVariableOp�
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*"
_output_shapes
:@ *
dtype0�
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:����������
 *
equationabc,cde->abdez
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes

: *
dtype0�
	query/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������
 �
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*"
_output_shapes
:@ *
dtype0�
key/einsum/EinsumEinsumvalue(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:����������
 *
equationabc,cde->abdev
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes

: *
dtype0�
key/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������
 �
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*"
_output_shapes
:@ *
dtype0�
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:����������
 *
equationabc,cde->abdez
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes

: *
dtype0�
	value/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������
 J
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *�5>d
MulMulquery/add:z:0Mul/y:output:0*
T0*0
_output_shapes
:����������
 �
einsum/EinsumEinsumkey/add:z:0Mul:z:0*
N*
T0*1
_output_shapes
:����������
�
*
equationaecd,abcd->acben
softmax/SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*1
_output_shapes
:����������
�
s
dropout/IdentityIdentitysoftmax/Softmax:softmax:0*
T0*1
_output_shapes
:����������
�
�
einsum_1/EinsumEinsumdropout/Identity:output:0value/add:z:0*
N*
T0*0
_output_shapes
:����������
 *
equationacbe,aecd->abcd�
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
: @*
dtype0�
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:����������
@*
equationabcd,cde->abe�
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes
:@*
dtype0�
attention_output/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������
@l
IdentityIdentityattention_output/add:z:0^NoOp*
T0*,
_output_shapes
:����������
@�
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:����������
@:����������
@: : : : : : : : 2J
#attention_output/add/ReadVariableOp#attention_output/add/ReadVariableOp2^
-attention_output/einsum/Einsum/ReadVariableOp-attention_output/einsum/Einsum/ReadVariableOp20
key/add/ReadVariableOpkey/add/ReadVariableOp2D
 key/einsum/Einsum/ReadVariableOp key/einsum/Einsum/ReadVariableOp24
query/add/ReadVariableOpquery/add/ReadVariableOp2H
"query/einsum/Einsum/ReadVariableOp"query/einsum/Einsum/ReadVariableOp24
value/add/ReadVariableOpvalue/add/ReadVariableOp2H
"value/einsum/Einsum/ReadVariableOp"value/einsum/Einsum/ReadVariableOp:S O
,
_output_shapes
:����������
@

_user_specified_namequery:SO
,
_output_shapes
:����������
@

_user_specified_namevalue:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource
�
�
P__inference_layer_normalization_1_layer_call_and_return_conditional_losses_23087

inputs3
%batchnorm_mul_readvariableop_resource:@/
!batchnorm_readvariableop_resource:@
identity��batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:����������
*
	keep_dims(r
moments/StopGradientStopGradientmoments/mean:output:0*
T0*,
_output_shapes
:����������
�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*,
_output_shapes
:����������
@l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:����������
*
	keep_dims(T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*,
_output_shapes
:����������
b
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*,
_output_shapes
:����������
~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype0�
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������
@h
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*,
_output_shapes
:����������
@w
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*,
_output_shapes
:����������
@v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype0�
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*,
_output_shapes
:����������
@w
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*,
_output_shapes
:����������
@g
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*,
_output_shapes
:����������
@\
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������
@: : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:T P
,
_output_shapes
:����������
@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
L__inference_tubelet_embedding_layer_call_and_return_conditional_losses_22951

videosC
%conv3d_conv3d_readvariableop_resource:@4
&conv3d_biasadd_readvariableop_resource:@
identity��conv3d/BiasAdd/ReadVariableOp�conv3d/Conv3D/ReadVariableOp�
conv3d/Conv3D/ReadVariableOpReadVariableOp%conv3d_conv3d_readvariableop_resource**
_output_shapes
:@*
dtype0�
conv3d/Conv3DConv3Dvideos$conv3d/Conv3D/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������@*
paddingVALID*
strides	
�
conv3d/BiasAdd/ReadVariableOpReadVariableOp&conv3d_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0�
conv3d/BiasAddBiasAddconv3d/Conv3D:output:0%conv3d/BiasAdd/ReadVariableOp:value:0*
T0*3
_output_shapes!
:���������@b
reshape/ShapeShapeconv3d/BiasAdd:output:0*
T0*
_output_shapes
::��e
reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
reshape/strided_sliceStridedSlicereshape/Shape:output:0$reshape/strided_slice/stack:output:0&reshape/strided_slice/stack_1:output:0&reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskb
reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
���������Y
reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :@�
reshape/Reshape/shapePackreshape/strided_slice:output:0 reshape/Reshape/shape/1:output:0 reshape/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:�
reshape/ReshapeReshapeconv3d/BiasAdd:output:0reshape/Reshape/shape:output:0*
T0*,
_output_shapes
:����������
@l
IdentityIdentityreshape/Reshape:output:0^NoOp*
T0*,
_output_shapes
:����������
@a
NoOpNoOp^conv3d/BiasAdd/ReadVariableOp^conv3d/Conv3D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:���������*��: : 2>
conv3d/BiasAdd/ReadVariableOpconv3d/BiasAdd/ReadVariableOp2<
conv3d/Conv3D/ReadVariableOpconv3d/Conv3D/ReadVariableOp:] Y
5
_output_shapes#
!:���������*��
 
_user_specified_namevideos:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�	
�
,__inference_sequential_1_layer_call_fn_22901
dense_2_input
unknown:	@�
	unknown_0:	�
	unknown_1:	�@
	unknown_2:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalldense_2_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������
@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_22875t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:����������
@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������
@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
,
_output_shapes
:����������
@
'
_user_specified_namedense_2_input:%!

_user_specified_name22891:%!

_user_specified_name22893:%!

_user_specified_name22895:%!

_user_specified_name22897
�	
�
*__inference_sequential_layer_call_fn_22753
dense_input
unknown:	@�
	unknown_0:	�
	unknown_1:	�@
	unknown_2:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalldense_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������
@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_22727t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:����������
@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������
@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
,
_output_shapes
:����������
@
%
_user_specified_namedense_input:%!

_user_specified_name22743:%!

_user_specified_name22745:%!

_user_specified_name22747:%!

_user_specified_name22749
�
�
2__inference_positional_encoder_layer_call_fn_23940
encoded_tokens
unknown
	unknown_0:	�
@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallencoded_tokensunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������
@*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_positional_encoder_layer_call_and_return_conditional_losses_22967t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:����������
@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:����������
@:�
: 22
StatefulPartitionedCallStatefulPartitionedCall:\ X
,
_output_shapes
:����������
@
(
_user_specified_nameencoded_tokens:B>

_output_shapes	
:�


_user_specified_name23934:%!

_user_specified_name23936
�,
�
O__inference_multi_head_attention_layer_call_and_return_conditional_losses_23342	
query	
valueA
+query_einsum_einsum_readvariableop_resource:@ 3
!query_add_readvariableop_resource: ?
)key_einsum_einsum_readvariableop_resource:@ 1
key_add_readvariableop_resource: A
+value_einsum_einsum_readvariableop_resource:@ 3
!value_add_readvariableop_resource: L
6attention_output_einsum_einsum_readvariableop_resource: @:
,attention_output_add_readvariableop_resource:@
identity��#attention_output/add/ReadVariableOp�-attention_output/einsum/Einsum/ReadVariableOp�key/add/ReadVariableOp� key/einsum/Einsum/ReadVariableOp�query/add/ReadVariableOp�"query/einsum/Einsum/ReadVariableOp�value/add/ReadVariableOp�"value/einsum/Einsum/ReadVariableOp�
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*"
_output_shapes
:@ *
dtype0�
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:����������
 *
equationabc,cde->abdez
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes

: *
dtype0�
	query/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������
 �
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*"
_output_shapes
:@ *
dtype0�
key/einsum/EinsumEinsumvalue(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:����������
 *
equationabc,cde->abdev
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes

: *
dtype0�
key/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������
 �
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*"
_output_shapes
:@ *
dtype0�
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:����������
 *
equationabc,cde->abdez
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes

: *
dtype0�
	value/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������
 J
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *�5>d
MulMulquery/add:z:0Mul/y:output:0*
T0*0
_output_shapes
:����������
 �
einsum/EinsumEinsumkey/add:z:0Mul:z:0*
N*
T0*1
_output_shapes
:����������
�
*
equationaecd,abcd->acben
softmax/SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*1
_output_shapes
:����������
�
s
dropout/IdentityIdentitysoftmax/Softmax:softmax:0*
T0*1
_output_shapes
:����������
�
�
einsum_1/EinsumEinsumdropout/Identity:output:0value/add:z:0*
N*
T0*0
_output_shapes
:����������
 *
equationacbe,aecd->abcd�
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
: @*
dtype0�
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:����������
@*
equationabcd,cde->abe�
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes
:@*
dtype0�
attention_output/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������
@l
IdentityIdentityattention_output/add:z:0^NoOp*
T0*,
_output_shapes
:����������
@�
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:����������
@:����������
@: : : : : : : : 2J
#attention_output/add/ReadVariableOp#attention_output/add/ReadVariableOp2^
-attention_output/einsum/Einsum/ReadVariableOp-attention_output/einsum/Einsum/ReadVariableOp20
key/add/ReadVariableOpkey/add/ReadVariableOp2D
 key/einsum/Einsum/ReadVariableOp key/einsum/Einsum/ReadVariableOp24
query/add/ReadVariableOpquery/add/ReadVariableOp2H
"query/einsum/Einsum/ReadVariableOp"query/einsum/Einsum/ReadVariableOp24
value/add/ReadVariableOpvalue/add/ReadVariableOp2H
"value/einsum/Einsum/ReadVariableOp"value/einsum/Einsum/ReadVariableOp:S O
,
_output_shapes
:����������
@

_user_specified_namequery:SO
,
_output_shapes
:����������
@

_user_specified_namevalue:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource
��
�[
!__inference__traced_restore_25808
file_prefix8
*assignvariableop_layer_normalization_gamma:@9
+assignvariableop_1_layer_normalization_beta:@<
.assignvariableop_2_layer_normalization_1_gamma:@;
-assignvariableop_3_layer_normalization_1_beta:@<
.assignvariableop_4_layer_normalization_2_gamma:@;
-assignvariableop_5_layer_normalization_2_beta:@<
.assignvariableop_6_layer_normalization_3_gamma:@;
-assignvariableop_7_layer_normalization_3_beta:@<
.assignvariableop_8_layer_normalization_4_gamma:@;
-assignvariableop_9_layer_normalization_4_beta:@4
"assignvariableop_10_dense_4_kernel:@.
 assignvariableop_11_dense_4_bias:Q
3assignvariableop_12_tubelet_embedding_conv3d_kernel:@?
1assignvariableop_13_tubelet_embedding_conv3d_bias:@N
;assignvariableop_14_positional_encoder_embedding_embeddings:	�
@K
5assignvariableop_15_multi_head_attention_query_kernel:@ E
3assignvariableop_16_multi_head_attention_query_bias: I
3assignvariableop_17_multi_head_attention_key_kernel:@ C
1assignvariableop_18_multi_head_attention_key_bias: K
5assignvariableop_19_multi_head_attention_value_kernel:@ E
3assignvariableop_20_multi_head_attention_value_bias: V
@assignvariableop_21_multi_head_attention_attention_output_kernel: @L
>assignvariableop_22_multi_head_attention_attention_output_bias:@3
 assignvariableop_23_dense_kernel:	@�-
assignvariableop_24_dense_bias:	�5
"assignvariableop_25_dense_1_kernel:	�@.
 assignvariableop_26_dense_1_bias:@M
7assignvariableop_27_multi_head_attention_1_query_kernel:@ G
5assignvariableop_28_multi_head_attention_1_query_bias: K
5assignvariableop_29_multi_head_attention_1_key_kernel:@ E
3assignvariableop_30_multi_head_attention_1_key_bias: M
7assignvariableop_31_multi_head_attention_1_value_kernel:@ G
5assignvariableop_32_multi_head_attention_1_value_bias: X
Bassignvariableop_33_multi_head_attention_1_attention_output_kernel: @N
@assignvariableop_34_multi_head_attention_1_attention_output_bias:@5
"assignvariableop_35_dense_2_kernel:	@�/
 assignvariableop_36_dense_2_bias:	�5
"assignvariableop_37_dense_3_kernel:	�@.
 assignvariableop_38_dense_3_bias:@'
assignvariableop_39_iteration:	 +
!assignvariableop_40_learning_rate: X
:assignvariableop_41_adam_m_tubelet_embedding_conv3d_kernel:@X
:assignvariableop_42_adam_v_tubelet_embedding_conv3d_kernel:@F
8assignvariableop_43_adam_m_tubelet_embedding_conv3d_bias:@F
8assignvariableop_44_adam_v_tubelet_embedding_conv3d_bias:@U
Bassignvariableop_45_adam_m_positional_encoder_embedding_embeddings:	�
@U
Bassignvariableop_46_adam_v_positional_encoder_embedding_embeddings:	�
@B
4assignvariableop_47_adam_m_layer_normalization_gamma:@B
4assignvariableop_48_adam_v_layer_normalization_gamma:@A
3assignvariableop_49_adam_m_layer_normalization_beta:@A
3assignvariableop_50_adam_v_layer_normalization_beta:@R
<assignvariableop_51_adam_m_multi_head_attention_query_kernel:@ R
<assignvariableop_52_adam_v_multi_head_attention_query_kernel:@ L
:assignvariableop_53_adam_m_multi_head_attention_query_bias: L
:assignvariableop_54_adam_v_multi_head_attention_query_bias: P
:assignvariableop_55_adam_m_multi_head_attention_key_kernel:@ P
:assignvariableop_56_adam_v_multi_head_attention_key_kernel:@ J
8assignvariableop_57_adam_m_multi_head_attention_key_bias: J
8assignvariableop_58_adam_v_multi_head_attention_key_bias: R
<assignvariableop_59_adam_m_multi_head_attention_value_kernel:@ R
<assignvariableop_60_adam_v_multi_head_attention_value_kernel:@ L
:assignvariableop_61_adam_m_multi_head_attention_value_bias: L
:assignvariableop_62_adam_v_multi_head_attention_value_bias: ]
Gassignvariableop_63_adam_m_multi_head_attention_attention_output_kernel: @]
Gassignvariableop_64_adam_v_multi_head_attention_attention_output_kernel: @S
Eassignvariableop_65_adam_m_multi_head_attention_attention_output_bias:@S
Eassignvariableop_66_adam_v_multi_head_attention_attention_output_bias:@D
6assignvariableop_67_adam_m_layer_normalization_1_gamma:@D
6assignvariableop_68_adam_v_layer_normalization_1_gamma:@C
5assignvariableop_69_adam_m_layer_normalization_1_beta:@C
5assignvariableop_70_adam_v_layer_normalization_1_beta:@:
'assignvariableop_71_adam_m_dense_kernel:	@�:
'assignvariableop_72_adam_v_dense_kernel:	@�4
%assignvariableop_73_adam_m_dense_bias:	�4
%assignvariableop_74_adam_v_dense_bias:	�<
)assignvariableop_75_adam_m_dense_1_kernel:	�@<
)assignvariableop_76_adam_v_dense_1_kernel:	�@5
'assignvariableop_77_adam_m_dense_1_bias:@5
'assignvariableop_78_adam_v_dense_1_bias:@D
6assignvariableop_79_adam_m_layer_normalization_2_gamma:@D
6assignvariableop_80_adam_v_layer_normalization_2_gamma:@C
5assignvariableop_81_adam_m_layer_normalization_2_beta:@C
5assignvariableop_82_adam_v_layer_normalization_2_beta:@T
>assignvariableop_83_adam_m_multi_head_attention_1_query_kernel:@ T
>assignvariableop_84_adam_v_multi_head_attention_1_query_kernel:@ N
<assignvariableop_85_adam_m_multi_head_attention_1_query_bias: N
<assignvariableop_86_adam_v_multi_head_attention_1_query_bias: R
<assignvariableop_87_adam_m_multi_head_attention_1_key_kernel:@ R
<assignvariableop_88_adam_v_multi_head_attention_1_key_kernel:@ L
:assignvariableop_89_adam_m_multi_head_attention_1_key_bias: L
:assignvariableop_90_adam_v_multi_head_attention_1_key_bias: T
>assignvariableop_91_adam_m_multi_head_attention_1_value_kernel:@ T
>assignvariableop_92_adam_v_multi_head_attention_1_value_kernel:@ N
<assignvariableop_93_adam_m_multi_head_attention_1_value_bias: N
<assignvariableop_94_adam_v_multi_head_attention_1_value_bias: _
Iassignvariableop_95_adam_m_multi_head_attention_1_attention_output_kernel: @_
Iassignvariableop_96_adam_v_multi_head_attention_1_attention_output_kernel: @U
Gassignvariableop_97_adam_m_multi_head_attention_1_attention_output_bias:@U
Gassignvariableop_98_adam_v_multi_head_attention_1_attention_output_bias:@D
6assignvariableop_99_adam_m_layer_normalization_3_gamma:@E
7assignvariableop_100_adam_v_layer_normalization_3_gamma:@D
6assignvariableop_101_adam_m_layer_normalization_3_beta:@D
6assignvariableop_102_adam_v_layer_normalization_3_beta:@=
*assignvariableop_103_adam_m_dense_2_kernel:	@�=
*assignvariableop_104_adam_v_dense_2_kernel:	@�7
(assignvariableop_105_adam_m_dense_2_bias:	�7
(assignvariableop_106_adam_v_dense_2_bias:	�=
*assignvariableop_107_adam_m_dense_3_kernel:	�@=
*assignvariableop_108_adam_v_dense_3_kernel:	�@6
(assignvariableop_109_adam_m_dense_3_bias:@6
(assignvariableop_110_adam_v_dense_3_bias:@E
7assignvariableop_111_adam_m_layer_normalization_4_gamma:@E
7assignvariableop_112_adam_v_layer_normalization_4_gamma:@D
6assignvariableop_113_adam_m_layer_normalization_4_beta:@D
6assignvariableop_114_adam_v_layer_normalization_4_beta:@<
*assignvariableop_115_adam_m_dense_4_kernel:@<
*assignvariableop_116_adam_v_dense_4_kernel:@6
(assignvariableop_117_adam_m_dense_4_bias:6
(assignvariableop_118_adam_v_dense_4_bias:&
assignvariableop_119_total_4: &
assignvariableop_120_count_4: &
assignvariableop_121_total_3: &
assignvariableop_122_count_3: &
assignvariableop_123_total_2: &
assignvariableop_124_count_2: &
assignvariableop_125_total_1: &
assignvariableop_126_count_1: $
assignvariableop_127_total: $
assignvariableop_128_count: 
identity_130��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_100�AssignVariableOp_101�AssignVariableOp_102�AssignVariableOp_103�AssignVariableOp_104�AssignVariableOp_105�AssignVariableOp_106�AssignVariableOp_107�AssignVariableOp_108�AssignVariableOp_109�AssignVariableOp_11�AssignVariableOp_110�AssignVariableOp_111�AssignVariableOp_112�AssignVariableOp_113�AssignVariableOp_114�AssignVariableOp_115�AssignVariableOp_116�AssignVariableOp_117�AssignVariableOp_118�AssignVariableOp_119�AssignVariableOp_12�AssignVariableOp_120�AssignVariableOp_121�AssignVariableOp_122�AssignVariableOp_123�AssignVariableOp_124�AssignVariableOp_125�AssignVariableOp_126�AssignVariableOp_127�AssignVariableOp_128�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_44�AssignVariableOp_45�AssignVariableOp_46�AssignVariableOp_47�AssignVariableOp_48�AssignVariableOp_49�AssignVariableOp_5�AssignVariableOp_50�AssignVariableOp_51�AssignVariableOp_52�AssignVariableOp_53�AssignVariableOp_54�AssignVariableOp_55�AssignVariableOp_56�AssignVariableOp_57�AssignVariableOp_58�AssignVariableOp_59�AssignVariableOp_6�AssignVariableOp_60�AssignVariableOp_61�AssignVariableOp_62�AssignVariableOp_63�AssignVariableOp_64�AssignVariableOp_65�AssignVariableOp_66�AssignVariableOp_67�AssignVariableOp_68�AssignVariableOp_69�AssignVariableOp_7�AssignVariableOp_70�AssignVariableOp_71�AssignVariableOp_72�AssignVariableOp_73�AssignVariableOp_74�AssignVariableOp_75�AssignVariableOp_76�AssignVariableOp_77�AssignVariableOp_78�AssignVariableOp_79�AssignVariableOp_8�AssignVariableOp_80�AssignVariableOp_81�AssignVariableOp_82�AssignVariableOp_83�AssignVariableOp_84�AssignVariableOp_85�AssignVariableOp_86�AssignVariableOp_87�AssignVariableOp_88�AssignVariableOp_89�AssignVariableOp_9�AssignVariableOp_90�AssignVariableOp_91�AssignVariableOp_92�AssignVariableOp_93�AssignVariableOp_94�AssignVariableOp_95�AssignVariableOp_96�AssignVariableOp_97�AssignVariableOp_98�AssignVariableOp_99�3
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes	
:�*
dtype0*�2
value�2B�2�B5layer_with_weights-2/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/beta/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-6/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/beta/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-8/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/beta/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-10/gamma/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-10/beta/.ATTRIBUTES/VARIABLE_VALUEB7layer_with_weights-11/kernel/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-11/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB'variables/28/.ATTRIBUTES/VARIABLE_VALUEB'variables/31/.ATTRIBUTES/VARIABLE_VALUEB'variables/32/.ATTRIBUTES/VARIABLE_VALUEB'variables/33/.ATTRIBUTES/VARIABLE_VALUEB'variables/34/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/17/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/18/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/19/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/20/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/21/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/22/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/23/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/24/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/25/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/26/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/27/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/28/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/29/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/30/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/31/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/32/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/33/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/34/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/35/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/36/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/37/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/38/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/39/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/40/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/41/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/42/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/43/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/44/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/45/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/46/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/47/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/48/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/49/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/50/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/51/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/52/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/53/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/54/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/55/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/56/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/57/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/58/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/59/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/60/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/61/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/62/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/63/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/64/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/65/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/66/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/67/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/68/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/69/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/70/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/71/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/72/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/73/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/74/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/75/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/76/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/77/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/78/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes	
:�*
dtype0*�
value�B��B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*�
dtypes�
�2�	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp*assignvariableop_layer_normalization_gammaIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp+assignvariableop_1_layer_normalization_betaIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp.assignvariableop_2_layer_normalization_1_gammaIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp-assignvariableop_3_layer_normalization_1_betaIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp.assignvariableop_4_layer_normalization_2_gammaIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp-assignvariableop_5_layer_normalization_2_betaIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp.assignvariableop_6_layer_normalization_3_gammaIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp-assignvariableop_7_layer_normalization_3_betaIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp.assignvariableop_8_layer_normalization_4_gammaIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp-assignvariableop_9_layer_normalization_4_betaIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp"assignvariableop_10_dense_4_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp assignvariableop_11_dense_4_biasIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp3assignvariableop_12_tubelet_embedding_conv3d_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp1assignvariableop_13_tubelet_embedding_conv3d_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp;assignvariableop_14_positional_encoder_embedding_embeddingsIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOp5assignvariableop_15_multi_head_attention_query_kernelIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOp3assignvariableop_16_multi_head_attention_query_biasIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOp3assignvariableop_17_multi_head_attention_key_kernelIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp1assignvariableop_18_multi_head_attention_key_biasIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp5assignvariableop_19_multi_head_attention_value_kernelIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp3assignvariableop_20_multi_head_attention_value_biasIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp@assignvariableop_21_multi_head_attention_attention_output_kernelIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp>assignvariableop_22_multi_head_attention_attention_output_biasIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp assignvariableop_23_dense_kernelIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOpassignvariableop_24_dense_biasIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp"assignvariableop_25_dense_1_kernelIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp assignvariableop_26_dense_1_biasIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp7assignvariableop_27_multi_head_attention_1_query_kernelIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp5assignvariableop_28_multi_head_attention_1_query_biasIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp5assignvariableop_29_multi_head_attention_1_key_kernelIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp3assignvariableop_30_multi_head_attention_1_key_biasIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp7assignvariableop_31_multi_head_attention_1_value_kernelIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOp5assignvariableop_32_multi_head_attention_1_value_biasIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOpBassignvariableop_33_multi_head_attention_1_attention_output_kernelIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOp@assignvariableop_34_multi_head_attention_1_attention_output_biasIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOp"assignvariableop_35_dense_2_kernelIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOp assignvariableop_36_dense_2_biasIdentity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOp"assignvariableop_37_dense_3_kernelIdentity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOp assignvariableop_38_dense_3_biasIdentity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_39AssignVariableOpassignvariableop_39_iterationIdentity_39:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_40AssignVariableOp!assignvariableop_40_learning_rateIdentity_40:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_41AssignVariableOp:assignvariableop_41_adam_m_tubelet_embedding_conv3d_kernelIdentity_41:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_42AssignVariableOp:assignvariableop_42_adam_v_tubelet_embedding_conv3d_kernelIdentity_42:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_43AssignVariableOp8assignvariableop_43_adam_m_tubelet_embedding_conv3d_biasIdentity_43:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_44AssignVariableOp8assignvariableop_44_adam_v_tubelet_embedding_conv3d_biasIdentity_44:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_45AssignVariableOpBassignvariableop_45_adam_m_positional_encoder_embedding_embeddingsIdentity_45:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_46AssignVariableOpBassignvariableop_46_adam_v_positional_encoder_embedding_embeddingsIdentity_46:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_47AssignVariableOp4assignvariableop_47_adam_m_layer_normalization_gammaIdentity_47:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_48AssignVariableOp4assignvariableop_48_adam_v_layer_normalization_gammaIdentity_48:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_49AssignVariableOp3assignvariableop_49_adam_m_layer_normalization_betaIdentity_49:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_50AssignVariableOp3assignvariableop_50_adam_v_layer_normalization_betaIdentity_50:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_51AssignVariableOp<assignvariableop_51_adam_m_multi_head_attention_query_kernelIdentity_51:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_52AssignVariableOp<assignvariableop_52_adam_v_multi_head_attention_query_kernelIdentity_52:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_53AssignVariableOp:assignvariableop_53_adam_m_multi_head_attention_query_biasIdentity_53:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_54AssignVariableOp:assignvariableop_54_adam_v_multi_head_attention_query_biasIdentity_54:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_55AssignVariableOp:assignvariableop_55_adam_m_multi_head_attention_key_kernelIdentity_55:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_56AssignVariableOp:assignvariableop_56_adam_v_multi_head_attention_key_kernelIdentity_56:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_57AssignVariableOp8assignvariableop_57_adam_m_multi_head_attention_key_biasIdentity_57:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_58AssignVariableOp8assignvariableop_58_adam_v_multi_head_attention_key_biasIdentity_58:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_59AssignVariableOp<assignvariableop_59_adam_m_multi_head_attention_value_kernelIdentity_59:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_60AssignVariableOp<assignvariableop_60_adam_v_multi_head_attention_value_kernelIdentity_60:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_61AssignVariableOp:assignvariableop_61_adam_m_multi_head_attention_value_biasIdentity_61:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_62AssignVariableOp:assignvariableop_62_adam_v_multi_head_attention_value_biasIdentity_62:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_63AssignVariableOpGassignvariableop_63_adam_m_multi_head_attention_attention_output_kernelIdentity_63:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_64AssignVariableOpGassignvariableop_64_adam_v_multi_head_attention_attention_output_kernelIdentity_64:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_65AssignVariableOpEassignvariableop_65_adam_m_multi_head_attention_attention_output_biasIdentity_65:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_66AssignVariableOpEassignvariableop_66_adam_v_multi_head_attention_attention_output_biasIdentity_66:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_67AssignVariableOp6assignvariableop_67_adam_m_layer_normalization_1_gammaIdentity_67:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_68AssignVariableOp6assignvariableop_68_adam_v_layer_normalization_1_gammaIdentity_68:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_69AssignVariableOp5assignvariableop_69_adam_m_layer_normalization_1_betaIdentity_69:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_70AssignVariableOp5assignvariableop_70_adam_v_layer_normalization_1_betaIdentity_70:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_71AssignVariableOp'assignvariableop_71_adam_m_dense_kernelIdentity_71:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_72AssignVariableOp'assignvariableop_72_adam_v_dense_kernelIdentity_72:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_73AssignVariableOp%assignvariableop_73_adam_m_dense_biasIdentity_73:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_74AssignVariableOp%assignvariableop_74_adam_v_dense_biasIdentity_74:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_75AssignVariableOp)assignvariableop_75_adam_m_dense_1_kernelIdentity_75:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_76AssignVariableOp)assignvariableop_76_adam_v_dense_1_kernelIdentity_76:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_77AssignVariableOp'assignvariableop_77_adam_m_dense_1_biasIdentity_77:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_78AssignVariableOp'assignvariableop_78_adam_v_dense_1_biasIdentity_78:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_79AssignVariableOp6assignvariableop_79_adam_m_layer_normalization_2_gammaIdentity_79:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_80AssignVariableOp6assignvariableop_80_adam_v_layer_normalization_2_gammaIdentity_80:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_81AssignVariableOp5assignvariableop_81_adam_m_layer_normalization_2_betaIdentity_81:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_82AssignVariableOp5assignvariableop_82_adam_v_layer_normalization_2_betaIdentity_82:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_83AssignVariableOp>assignvariableop_83_adam_m_multi_head_attention_1_query_kernelIdentity_83:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_84IdentityRestoreV2:tensors:84"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_84AssignVariableOp>assignvariableop_84_adam_v_multi_head_attention_1_query_kernelIdentity_84:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_85IdentityRestoreV2:tensors:85"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_85AssignVariableOp<assignvariableop_85_adam_m_multi_head_attention_1_query_biasIdentity_85:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_86IdentityRestoreV2:tensors:86"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_86AssignVariableOp<assignvariableop_86_adam_v_multi_head_attention_1_query_biasIdentity_86:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_87IdentityRestoreV2:tensors:87"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_87AssignVariableOp<assignvariableop_87_adam_m_multi_head_attention_1_key_kernelIdentity_87:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_88IdentityRestoreV2:tensors:88"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_88AssignVariableOp<assignvariableop_88_adam_v_multi_head_attention_1_key_kernelIdentity_88:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_89IdentityRestoreV2:tensors:89"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_89AssignVariableOp:assignvariableop_89_adam_m_multi_head_attention_1_key_biasIdentity_89:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_90IdentityRestoreV2:tensors:90"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_90AssignVariableOp:assignvariableop_90_adam_v_multi_head_attention_1_key_biasIdentity_90:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_91IdentityRestoreV2:tensors:91"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_91AssignVariableOp>assignvariableop_91_adam_m_multi_head_attention_1_value_kernelIdentity_91:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_92IdentityRestoreV2:tensors:92"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_92AssignVariableOp>assignvariableop_92_adam_v_multi_head_attention_1_value_kernelIdentity_92:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_93IdentityRestoreV2:tensors:93"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_93AssignVariableOp<assignvariableop_93_adam_m_multi_head_attention_1_value_biasIdentity_93:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_94IdentityRestoreV2:tensors:94"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_94AssignVariableOp<assignvariableop_94_adam_v_multi_head_attention_1_value_biasIdentity_94:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_95IdentityRestoreV2:tensors:95"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_95AssignVariableOpIassignvariableop_95_adam_m_multi_head_attention_1_attention_output_kernelIdentity_95:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_96IdentityRestoreV2:tensors:96"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_96AssignVariableOpIassignvariableop_96_adam_v_multi_head_attention_1_attention_output_kernelIdentity_96:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_97IdentityRestoreV2:tensors:97"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_97AssignVariableOpGassignvariableop_97_adam_m_multi_head_attention_1_attention_output_biasIdentity_97:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_98IdentityRestoreV2:tensors:98"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_98AssignVariableOpGassignvariableop_98_adam_v_multi_head_attention_1_attention_output_biasIdentity_98:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_99IdentityRestoreV2:tensors:99"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_99AssignVariableOp6assignvariableop_99_adam_m_layer_normalization_3_gammaIdentity_99:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_100IdentityRestoreV2:tensors:100"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_100AssignVariableOp7assignvariableop_100_adam_v_layer_normalization_3_gammaIdentity_100:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_101IdentityRestoreV2:tensors:101"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_101AssignVariableOp6assignvariableop_101_adam_m_layer_normalization_3_betaIdentity_101:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_102IdentityRestoreV2:tensors:102"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_102AssignVariableOp6assignvariableop_102_adam_v_layer_normalization_3_betaIdentity_102:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_103IdentityRestoreV2:tensors:103"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_103AssignVariableOp*assignvariableop_103_adam_m_dense_2_kernelIdentity_103:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_104IdentityRestoreV2:tensors:104"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_104AssignVariableOp*assignvariableop_104_adam_v_dense_2_kernelIdentity_104:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_105IdentityRestoreV2:tensors:105"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_105AssignVariableOp(assignvariableop_105_adam_m_dense_2_biasIdentity_105:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_106IdentityRestoreV2:tensors:106"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_106AssignVariableOp(assignvariableop_106_adam_v_dense_2_biasIdentity_106:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_107IdentityRestoreV2:tensors:107"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_107AssignVariableOp*assignvariableop_107_adam_m_dense_3_kernelIdentity_107:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_108IdentityRestoreV2:tensors:108"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_108AssignVariableOp*assignvariableop_108_adam_v_dense_3_kernelIdentity_108:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_109IdentityRestoreV2:tensors:109"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_109AssignVariableOp(assignvariableop_109_adam_m_dense_3_biasIdentity_109:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_110IdentityRestoreV2:tensors:110"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_110AssignVariableOp(assignvariableop_110_adam_v_dense_3_biasIdentity_110:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_111IdentityRestoreV2:tensors:111"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_111AssignVariableOp7assignvariableop_111_adam_m_layer_normalization_4_gammaIdentity_111:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_112IdentityRestoreV2:tensors:112"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_112AssignVariableOp7assignvariableop_112_adam_v_layer_normalization_4_gammaIdentity_112:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_113IdentityRestoreV2:tensors:113"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_113AssignVariableOp6assignvariableop_113_adam_m_layer_normalization_4_betaIdentity_113:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_114IdentityRestoreV2:tensors:114"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_114AssignVariableOp6assignvariableop_114_adam_v_layer_normalization_4_betaIdentity_114:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_115IdentityRestoreV2:tensors:115"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_115AssignVariableOp*assignvariableop_115_adam_m_dense_4_kernelIdentity_115:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_116IdentityRestoreV2:tensors:116"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_116AssignVariableOp*assignvariableop_116_adam_v_dense_4_kernelIdentity_116:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_117IdentityRestoreV2:tensors:117"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_117AssignVariableOp(assignvariableop_117_adam_m_dense_4_biasIdentity_117:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_118IdentityRestoreV2:tensors:118"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_118AssignVariableOp(assignvariableop_118_adam_v_dense_4_biasIdentity_118:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_119IdentityRestoreV2:tensors:119"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_119AssignVariableOpassignvariableop_119_total_4Identity_119:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_120IdentityRestoreV2:tensors:120"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_120AssignVariableOpassignvariableop_120_count_4Identity_120:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_121IdentityRestoreV2:tensors:121"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_121AssignVariableOpassignvariableop_121_total_3Identity_121:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_122IdentityRestoreV2:tensors:122"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_122AssignVariableOpassignvariableop_122_count_3Identity_122:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_123IdentityRestoreV2:tensors:123"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_123AssignVariableOpassignvariableop_123_total_2Identity_123:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_124IdentityRestoreV2:tensors:124"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_124AssignVariableOpassignvariableop_124_count_2Identity_124:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_125IdentityRestoreV2:tensors:125"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_125AssignVariableOpassignvariableop_125_total_1Identity_125:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_126IdentityRestoreV2:tensors:126"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_126AssignVariableOpassignvariableop_126_count_1Identity_126:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_127IdentityRestoreV2:tensors:127"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_127AssignVariableOpassignvariableop_127_totalIdentity_127:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0a
Identity_128IdentityRestoreV2:tensors:128"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_128AssignVariableOpassignvariableop_128_countIdentity_128:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_129Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_105^AssignVariableOp_106^AssignVariableOp_107^AssignVariableOp_108^AssignVariableOp_109^AssignVariableOp_11^AssignVariableOp_110^AssignVariableOp_111^AssignVariableOp_112^AssignVariableOp_113^AssignVariableOp_114^AssignVariableOp_115^AssignVariableOp_116^AssignVariableOp_117^AssignVariableOp_118^AssignVariableOp_119^AssignVariableOp_12^AssignVariableOp_120^AssignVariableOp_121^AssignVariableOp_122^AssignVariableOp_123^AssignVariableOp_124^AssignVariableOp_125^AssignVariableOp_126^AssignVariableOp_127^AssignVariableOp_128^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99^NoOp"/device:CPU:0*
T0*
_output_shapes
: Y
Identity_130IdentityIdentity_129:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_105^AssignVariableOp_106^AssignVariableOp_107^AssignVariableOp_108^AssignVariableOp_109^AssignVariableOp_11^AssignVariableOp_110^AssignVariableOp_111^AssignVariableOp_112^AssignVariableOp_113^AssignVariableOp_114^AssignVariableOp_115^AssignVariableOp_116^AssignVariableOp_117^AssignVariableOp_118^AssignVariableOp_119^AssignVariableOp_12^AssignVariableOp_120^AssignVariableOp_121^AssignVariableOp_122^AssignVariableOp_123^AssignVariableOp_124^AssignVariableOp_125^AssignVariableOp_126^AssignVariableOp_127^AssignVariableOp_128^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99*
_output_shapes
 "%
identity_130Identity_130:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102,
AssignVariableOp_100AssignVariableOp_1002,
AssignVariableOp_101AssignVariableOp_1012,
AssignVariableOp_102AssignVariableOp_1022,
AssignVariableOp_103AssignVariableOp_1032,
AssignVariableOp_104AssignVariableOp_1042,
AssignVariableOp_105AssignVariableOp_1052,
AssignVariableOp_106AssignVariableOp_1062,
AssignVariableOp_107AssignVariableOp_1072,
AssignVariableOp_108AssignVariableOp_1082,
AssignVariableOp_109AssignVariableOp_1092*
AssignVariableOp_11AssignVariableOp_112,
AssignVariableOp_110AssignVariableOp_1102,
AssignVariableOp_111AssignVariableOp_1112,
AssignVariableOp_112AssignVariableOp_1122,
AssignVariableOp_113AssignVariableOp_1132,
AssignVariableOp_114AssignVariableOp_1142,
AssignVariableOp_115AssignVariableOp_1152,
AssignVariableOp_116AssignVariableOp_1162,
AssignVariableOp_117AssignVariableOp_1172,
AssignVariableOp_118AssignVariableOp_1182,
AssignVariableOp_119AssignVariableOp_1192*
AssignVariableOp_12AssignVariableOp_122,
AssignVariableOp_120AssignVariableOp_1202,
AssignVariableOp_121AssignVariableOp_1212,
AssignVariableOp_122AssignVariableOp_1222,
AssignVariableOp_123AssignVariableOp_1232,
AssignVariableOp_124AssignVariableOp_1242,
AssignVariableOp_125AssignVariableOp_1252,
AssignVariableOp_126AssignVariableOp_1262,
AssignVariableOp_127AssignVariableOp_1272,
AssignVariableOp_128AssignVariableOp_1282*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772*
AssignVariableOp_78AssignVariableOp_782*
AssignVariableOp_79AssignVariableOp_792(
AssignVariableOp_8AssignVariableOp_82*
AssignVariableOp_80AssignVariableOp_802*
AssignVariableOp_81AssignVariableOp_812*
AssignVariableOp_82AssignVariableOp_822*
AssignVariableOp_83AssignVariableOp_832*
AssignVariableOp_84AssignVariableOp_842*
AssignVariableOp_85AssignVariableOp_852*
AssignVariableOp_86AssignVariableOp_862*
AssignVariableOp_87AssignVariableOp_872*
AssignVariableOp_88AssignVariableOp_882*
AssignVariableOp_89AssignVariableOp_892(
AssignVariableOp_9AssignVariableOp_92*
AssignVariableOp_90AssignVariableOp_902*
AssignVariableOp_91AssignVariableOp_912*
AssignVariableOp_92AssignVariableOp_922*
AssignVariableOp_93AssignVariableOp_932*
AssignVariableOp_94AssignVariableOp_942*
AssignVariableOp_95AssignVariableOp_952*
AssignVariableOp_96AssignVariableOp_962*
AssignVariableOp_97AssignVariableOp_972*
AssignVariableOp_98AssignVariableOp_982*
AssignVariableOp_99AssignVariableOp_99:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:95
3
_user_specified_namelayer_normalization/gamma:84
2
_user_specified_namelayer_normalization/beta:;7
5
_user_specified_namelayer_normalization_1/gamma::6
4
_user_specified_namelayer_normalization_1/beta:;7
5
_user_specified_namelayer_normalization_2/gamma::6
4
_user_specified_namelayer_normalization_2/beta:;7
5
_user_specified_namelayer_normalization_3/gamma::6
4
_user_specified_namelayer_normalization_3/beta:;	7
5
_user_specified_namelayer_normalization_4/gamma::
6
4
_user_specified_namelayer_normalization_4/beta:.*
(
_user_specified_namedense_4/kernel:,(
&
_user_specified_namedense_4/bias:?;
9
_user_specified_name!tubelet_embedding/conv3d/kernel:=9
7
_user_specified_nametubelet_embedding/conv3d/bias:GC
A
_user_specified_name)'positional_encoder/embedding/embeddings:A=
;
_user_specified_name#!multi_head_attention/query/kernel:?;
9
_user_specified_name!multi_head_attention/query/bias:?;
9
_user_specified_name!multi_head_attention/key/kernel:=9
7
_user_specified_namemulti_head_attention/key/bias:A=
;
_user_specified_name#!multi_head_attention/value/kernel:?;
9
_user_specified_name!multi_head_attention/value/bias:LH
F
_user_specified_name.,multi_head_attention/attention_output/kernel:JF
D
_user_specified_name,*multi_head_attention/attention_output/bias:,(
&
_user_specified_namedense/kernel:*&
$
_user_specified_name
dense/bias:.*
(
_user_specified_namedense_1/kernel:,(
&
_user_specified_namedense_1/bias:C?
=
_user_specified_name%#multi_head_attention_1/query/kernel:A=
;
_user_specified_name#!multi_head_attention_1/query/bias:A=
;
_user_specified_name#!multi_head_attention_1/key/kernel:?;
9
_user_specified_name!multi_head_attention_1/key/bias:C ?
=
_user_specified_name%#multi_head_attention_1/value/kernel:A!=
;
_user_specified_name#!multi_head_attention_1/value/bias:N"J
H
_user_specified_name0.multi_head_attention_1/attention_output/kernel:L#H
F
_user_specified_name.,multi_head_attention_1/attention_output/bias:.$*
(
_user_specified_namedense_2/kernel:,%(
&
_user_specified_namedense_2/bias:.&*
(
_user_specified_namedense_3/kernel:,'(
&
_user_specified_namedense_3/bias:)(%
#
_user_specified_name	iteration:-))
'
_user_specified_namelearning_rate:F*B
@
_user_specified_name(&Adam/m/tubelet_embedding/conv3d/kernel:F+B
@
_user_specified_name(&Adam/v/tubelet_embedding/conv3d/kernel:D,@
>
_user_specified_name&$Adam/m/tubelet_embedding/conv3d/bias:D-@
>
_user_specified_name&$Adam/v/tubelet_embedding/conv3d/bias:N.J
H
_user_specified_name0.Adam/m/positional_encoder/embedding/embeddings:N/J
H
_user_specified_name0.Adam/v/positional_encoder/embedding/embeddings:@0<
:
_user_specified_name" Adam/m/layer_normalization/gamma:@1<
:
_user_specified_name" Adam/v/layer_normalization/gamma:?2;
9
_user_specified_name!Adam/m/layer_normalization/beta:?3;
9
_user_specified_name!Adam/v/layer_normalization/beta:H4D
B
_user_specified_name*(Adam/m/multi_head_attention/query/kernel:H5D
B
_user_specified_name*(Adam/v/multi_head_attention/query/kernel:F6B
@
_user_specified_name(&Adam/m/multi_head_attention/query/bias:F7B
@
_user_specified_name(&Adam/v/multi_head_attention/query/bias:F8B
@
_user_specified_name(&Adam/m/multi_head_attention/key/kernel:F9B
@
_user_specified_name(&Adam/v/multi_head_attention/key/kernel:D:@
>
_user_specified_name&$Adam/m/multi_head_attention/key/bias:D;@
>
_user_specified_name&$Adam/v/multi_head_attention/key/bias:H<D
B
_user_specified_name*(Adam/m/multi_head_attention/value/kernel:H=D
B
_user_specified_name*(Adam/v/multi_head_attention/value/kernel:F>B
@
_user_specified_name(&Adam/m/multi_head_attention/value/bias:F?B
@
_user_specified_name(&Adam/v/multi_head_attention/value/bias:S@O
M
_user_specified_name53Adam/m/multi_head_attention/attention_output/kernel:SAO
M
_user_specified_name53Adam/v/multi_head_attention/attention_output/kernel:QBM
K
_user_specified_name31Adam/m/multi_head_attention/attention_output/bias:QCM
K
_user_specified_name31Adam/v/multi_head_attention/attention_output/bias:BD>
<
_user_specified_name$"Adam/m/layer_normalization_1/gamma:BE>
<
_user_specified_name$"Adam/v/layer_normalization_1/gamma:AF=
;
_user_specified_name#!Adam/m/layer_normalization_1/beta:AG=
;
_user_specified_name#!Adam/v/layer_normalization_1/beta:3H/
-
_user_specified_nameAdam/m/dense/kernel:3I/
-
_user_specified_nameAdam/v/dense/kernel:1J-
+
_user_specified_nameAdam/m/dense/bias:1K-
+
_user_specified_nameAdam/v/dense/bias:5L1
/
_user_specified_nameAdam/m/dense_1/kernel:5M1
/
_user_specified_nameAdam/v/dense_1/kernel:3N/
-
_user_specified_nameAdam/m/dense_1/bias:3O/
-
_user_specified_nameAdam/v/dense_1/bias:BP>
<
_user_specified_name$"Adam/m/layer_normalization_2/gamma:BQ>
<
_user_specified_name$"Adam/v/layer_normalization_2/gamma:AR=
;
_user_specified_name#!Adam/m/layer_normalization_2/beta:AS=
;
_user_specified_name#!Adam/v/layer_normalization_2/beta:JTF
D
_user_specified_name,*Adam/m/multi_head_attention_1/query/kernel:JUF
D
_user_specified_name,*Adam/v/multi_head_attention_1/query/kernel:HVD
B
_user_specified_name*(Adam/m/multi_head_attention_1/query/bias:HWD
B
_user_specified_name*(Adam/v/multi_head_attention_1/query/bias:HXD
B
_user_specified_name*(Adam/m/multi_head_attention_1/key/kernel:HYD
B
_user_specified_name*(Adam/v/multi_head_attention_1/key/kernel:FZB
@
_user_specified_name(&Adam/m/multi_head_attention_1/key/bias:F[B
@
_user_specified_name(&Adam/v/multi_head_attention_1/key/bias:J\F
D
_user_specified_name,*Adam/m/multi_head_attention_1/value/kernel:J]F
D
_user_specified_name,*Adam/v/multi_head_attention_1/value/kernel:H^D
B
_user_specified_name*(Adam/m/multi_head_attention_1/value/bias:H_D
B
_user_specified_name*(Adam/v/multi_head_attention_1/value/bias:U`Q
O
_user_specified_name75Adam/m/multi_head_attention_1/attention_output/kernel:UaQ
O
_user_specified_name75Adam/v/multi_head_attention_1/attention_output/kernel:SbO
M
_user_specified_name53Adam/m/multi_head_attention_1/attention_output/bias:ScO
M
_user_specified_name53Adam/v/multi_head_attention_1/attention_output/bias:Bd>
<
_user_specified_name$"Adam/m/layer_normalization_3/gamma:Be>
<
_user_specified_name$"Adam/v/layer_normalization_3/gamma:Af=
;
_user_specified_name#!Adam/m/layer_normalization_3/beta:Ag=
;
_user_specified_name#!Adam/v/layer_normalization_3/beta:5h1
/
_user_specified_nameAdam/m/dense_2/kernel:5i1
/
_user_specified_nameAdam/v/dense_2/kernel:3j/
-
_user_specified_nameAdam/m/dense_2/bias:3k/
-
_user_specified_nameAdam/v/dense_2/bias:5l1
/
_user_specified_nameAdam/m/dense_3/kernel:5m1
/
_user_specified_nameAdam/v/dense_3/kernel:3n/
-
_user_specified_nameAdam/m/dense_3/bias:3o/
-
_user_specified_nameAdam/v/dense_3/bias:Bp>
<
_user_specified_name$"Adam/m/layer_normalization_4/gamma:Bq>
<
_user_specified_name$"Adam/v/layer_normalization_4/gamma:Ar=
;
_user_specified_name#!Adam/m/layer_normalization_4/beta:As=
;
_user_specified_name#!Adam/v/layer_normalization_4/beta:5t1
/
_user_specified_nameAdam/m/dense_4/kernel:5u1
/
_user_specified_nameAdam/v/dense_4/kernel:3v/
-
_user_specified_nameAdam/m/dense_4/bias:3w/
-
_user_specified_nameAdam/v/dense_4/bias:'x#
!
_user_specified_name	total_4:'y#
!
_user_specified_name	count_4:'z#
!
_user_specified_name	total_3:'{#
!
_user_specified_name	count_3:'|#
!
_user_specified_name	total_2:'}#
!
_user_specified_name	count_2:'~#
!
_user_specified_name	total_1:'#
!
_user_specified_name	count_1:&�!

_user_specified_nametotal:&�!

_user_specified_namecount
�l
�
@__inference_model_layer_call_and_return_conditional_losses_23461
input_15
tubelet_embedding_23293:@%
tubelet_embedding_23295:@
positional_encoder_23298+
positional_encoder_23300:	�
@'
layer_normalization_23303:@'
layer_normalization_23305:@0
multi_head_attention_23343:@ ,
multi_head_attention_23345: 0
multi_head_attention_23347:@ ,
multi_head_attention_23349: 0
multi_head_attention_23351:@ ,
multi_head_attention_23353: 0
multi_head_attention_23355: @(
multi_head_attention_23357:@)
layer_normalization_1_23361:@)
layer_normalization_1_23363:@#
sequential_23366:	@�
sequential_23368:	�#
sequential_23370:	�@
sequential_23372:@)
layer_normalization_2_23376:@)
layer_normalization_2_23378:@2
multi_head_attention_1_23416:@ .
multi_head_attention_1_23418: 2
multi_head_attention_1_23420:@ .
multi_head_attention_1_23422: 2
multi_head_attention_1_23424:@ .
multi_head_attention_1_23426: 2
multi_head_attention_1_23428: @*
multi_head_attention_1_23430:@)
layer_normalization_3_23434:@)
layer_normalization_3_23436:@%
sequential_1_23439:	@�!
sequential_1_23441:	�%
sequential_1_23443:	�@ 
sequential_1_23445:@)
layer_normalization_4_23449:@)
layer_normalization_4_23451:@
dense_4_23455:@
dense_4_23457:
identity��dense_4/StatefulPartitionedCall�+layer_normalization/StatefulPartitionedCall�-layer_normalization_1/StatefulPartitionedCall�-layer_normalization_2/StatefulPartitionedCall�-layer_normalization_3/StatefulPartitionedCall�-layer_normalization_4/StatefulPartitionedCall�,multi_head_attention/StatefulPartitionedCall�.multi_head_attention_1/StatefulPartitionedCall�*positional_encoder/StatefulPartitionedCall�"sequential/StatefulPartitionedCall�$sequential_1/StatefulPartitionedCall�)tubelet_embedding/StatefulPartitionedCall�
)tubelet_embedding/StatefulPartitionedCallStatefulPartitionedCallinput_1tubelet_embedding_23293tubelet_embedding_23295*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������
@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_tubelet_embedding_layer_call_and_return_conditional_losses_22951�
*positional_encoder/StatefulPartitionedCallStatefulPartitionedCall2tubelet_embedding/StatefulPartitionedCall:output:0positional_encoder_23298positional_encoder_23300*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������
@*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_positional_encoder_layer_call_and_return_conditional_losses_22967�
+layer_normalization/StatefulPartitionedCallStatefulPartitionedCall3positional_encoder/StatefulPartitionedCall:output:0layer_normalization_23303layer_normalization_23305*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������
@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_layer_normalization_layer_call_and_return_conditional_losses_22994�
,multi_head_attention/StatefulPartitionedCallStatefulPartitionedCall4layer_normalization/StatefulPartitionedCall:output:04layer_normalization/StatefulPartitionedCall:output:0multi_head_attention_23343multi_head_attention_23345multi_head_attention_23347multi_head_attention_23349multi_head_attention_23351multi_head_attention_23353multi_head_attention_23355multi_head_attention_23357*
Tin
2
*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������
@**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8� *X
fSRQ
O__inference_multi_head_attention_layer_call_and_return_conditional_losses_23342�
add/PartitionedCallPartitionedCall5multi_head_attention/StatefulPartitionedCall:output:03positional_encoder/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������
@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *G
fBR@
>__inference_add_layer_call_and_return_conditional_losses_23064�
-layer_normalization_1/StatefulPartitionedCallStatefulPartitionedCalladd/PartitionedCall:output:0layer_normalization_1_23361layer_normalization_1_23363*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������
@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Y
fTRR
P__inference_layer_normalization_1_layer_call_and_return_conditional_losses_23087�
"sequential/StatefulPartitionedCallStatefulPartitionedCall6layer_normalization_1/StatefulPartitionedCall:output:0sequential_23366sequential_23368sequential_23370sequential_23372*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������
@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_22727�
add_1/PartitionedCallPartitionedCall+sequential/StatefulPartitionedCall:output:0add/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������
@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_add_1_layer_call_and_return_conditional_losses_23107�
-layer_normalization_2/StatefulPartitionedCallStatefulPartitionedCalladd_1/PartitionedCall:output:0layer_normalization_2_23376layer_normalization_2_23378*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������
@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Y
fTRR
P__inference_layer_normalization_2_layer_call_and_return_conditional_losses_23130�
.multi_head_attention_1/StatefulPartitionedCallStatefulPartitionedCall6layer_normalization_2/StatefulPartitionedCall:output:06layer_normalization_2/StatefulPartitionedCall:output:0multi_head_attention_1_23416multi_head_attention_1_23418multi_head_attention_1_23420multi_head_attention_1_23422multi_head_attention_1_23424multi_head_attention_1_23426multi_head_attention_1_23428multi_head_attention_1_23430*
Tin
2
*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������
@**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_multi_head_attention_1_layer_call_and_return_conditional_losses_23415�
add_2/PartitionedCallPartitionedCall7multi_head_attention_1/StatefulPartitionedCall:output:0add_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������
@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_add_2_layer_call_and_return_conditional_losses_23200�
-layer_normalization_3/StatefulPartitionedCallStatefulPartitionedCalladd_2/PartitionedCall:output:0layer_normalization_3_23434layer_normalization_3_23436*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������
@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Y
fTRR
P__inference_layer_normalization_3_layer_call_and_return_conditional_losses_23223�
$sequential_1/StatefulPartitionedCallStatefulPartitionedCall6layer_normalization_3/StatefulPartitionedCall:output:0sequential_1_23439sequential_1_23441sequential_1_23443sequential_1_23445*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������
@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_22875�
add_3/PartitionedCallPartitionedCall-sequential_1/StatefulPartitionedCall:output:0add_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������
@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_add_3_layer_call_and_return_conditional_losses_23243�
-layer_normalization_4/StatefulPartitionedCallStatefulPartitionedCalladd_3/PartitionedCall:output:0layer_normalization_4_23449layer_normalization_4_23451*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������
@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Y
fTRR
P__inference_layer_normalization_4_layer_call_and_return_conditional_losses_23266�
(global_average_pooling1d/PartitionedCallPartitionedCall6layer_normalization_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *\
fWRU
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_22925�
dense_4/StatefulPartitionedCallStatefulPartitionedCall1global_average_pooling1d/PartitionedCall:output:0dense_4_23455dense_4_23457*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_23283w
IdentityIdentity(dense_4/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp ^dense_4/StatefulPartitionedCall,^layer_normalization/StatefulPartitionedCall.^layer_normalization_1/StatefulPartitionedCall.^layer_normalization_2/StatefulPartitionedCall.^layer_normalization_3/StatefulPartitionedCall.^layer_normalization_4/StatefulPartitionedCall-^multi_head_attention/StatefulPartitionedCall/^multi_head_attention_1/StatefulPartitionedCall+^positional_encoder/StatefulPartitionedCall#^sequential/StatefulPartitionedCall%^sequential_1/StatefulPartitionedCall*^tubelet_embedding/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapesx
v:���������*��: : :�
: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2Z
+layer_normalization/StatefulPartitionedCall+layer_normalization/StatefulPartitionedCall2^
-layer_normalization_1/StatefulPartitionedCall-layer_normalization_1/StatefulPartitionedCall2^
-layer_normalization_2/StatefulPartitionedCall-layer_normalization_2/StatefulPartitionedCall2^
-layer_normalization_3/StatefulPartitionedCall-layer_normalization_3/StatefulPartitionedCall2^
-layer_normalization_4/StatefulPartitionedCall-layer_normalization_4/StatefulPartitionedCall2\
,multi_head_attention/StatefulPartitionedCall,multi_head_attention/StatefulPartitionedCall2`
.multi_head_attention_1/StatefulPartitionedCall.multi_head_attention_1/StatefulPartitionedCall2X
*positional_encoder/StatefulPartitionedCall*positional_encoder/StatefulPartitionedCall2H
"sequential/StatefulPartitionedCall"sequential/StatefulPartitionedCall2L
$sequential_1/StatefulPartitionedCall$sequential_1/StatefulPartitionedCall2V
)tubelet_embedding/StatefulPartitionedCall)tubelet_embedding/StatefulPartitionedCall:^ Z
5
_output_shapes#
!:���������*��
!
_user_specified_name	input_1:%!

_user_specified_name23293:%!

_user_specified_name23295:B>

_output_shapes	
:�


_user_specified_name23298:%!

_user_specified_name23300:%!

_user_specified_name23303:%!

_user_specified_name23305:%!

_user_specified_name23343:%!

_user_specified_name23345:%	!

_user_specified_name23347:%
!

_user_specified_name23349:%!

_user_specified_name23351:%!

_user_specified_name23353:%!

_user_specified_name23355:%!

_user_specified_name23357:%!

_user_specified_name23361:%!

_user_specified_name23363:%!

_user_specified_name23366:%!

_user_specified_name23368:%!

_user_specified_name23370:%!

_user_specified_name23372:%!

_user_specified_name23376:%!

_user_specified_name23378:%!

_user_specified_name23416:%!

_user_specified_name23418:%!

_user_specified_name23420:%!

_user_specified_name23422:%!

_user_specified_name23424:%!

_user_specified_name23426:%!

_user_specified_name23428:%!

_user_specified_name23430:%!

_user_specified_name23434:% !

_user_specified_name23436:%!!

_user_specified_name23439:%"!

_user_specified_name23441:%#!

_user_specified_name23443:%$!

_user_specified_name23445:%%!

_user_specified_name23449:%&!

_user_specified_name23451:%'!

_user_specified_name23455:%(!

_user_specified_name23457
�
�
5__inference_layer_normalization_4_layer_call_fn_24374

inputs
unknown:@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������
@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Y
fTRR
P__inference_layer_normalization_4_layer_call_and_return_conditional_losses_23266t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:����������
@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������
@: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:����������
@
 
_user_specified_nameinputs:%!

_user_specified_name24368:%!

_user_specified_name24370
�l
�
@__inference_model_layer_call_and_return_conditional_losses_23290
input_15
tubelet_embedding_22952:@%
tubelet_embedding_22954:@
positional_encoder_22968+
positional_encoder_22970:	�
@'
layer_normalization_22995:@'
layer_normalization_22997:@0
multi_head_attention_23042:@ ,
multi_head_attention_23044: 0
multi_head_attention_23046:@ ,
multi_head_attention_23048: 0
multi_head_attention_23050:@ ,
multi_head_attention_23052: 0
multi_head_attention_23054: @(
multi_head_attention_23056:@)
layer_normalization_1_23088:@)
layer_normalization_1_23090:@#
sequential_23093:	@�
sequential_23095:	�#
sequential_23097:	�@
sequential_23099:@)
layer_normalization_2_23131:@)
layer_normalization_2_23133:@2
multi_head_attention_1_23178:@ .
multi_head_attention_1_23180: 2
multi_head_attention_1_23182:@ .
multi_head_attention_1_23184: 2
multi_head_attention_1_23186:@ .
multi_head_attention_1_23188: 2
multi_head_attention_1_23190: @*
multi_head_attention_1_23192:@)
layer_normalization_3_23224:@)
layer_normalization_3_23226:@%
sequential_1_23229:	@�!
sequential_1_23231:	�%
sequential_1_23233:	�@ 
sequential_1_23235:@)
layer_normalization_4_23267:@)
layer_normalization_4_23269:@
dense_4_23284:@
dense_4_23286:
identity��dense_4/StatefulPartitionedCall�+layer_normalization/StatefulPartitionedCall�-layer_normalization_1/StatefulPartitionedCall�-layer_normalization_2/StatefulPartitionedCall�-layer_normalization_3/StatefulPartitionedCall�-layer_normalization_4/StatefulPartitionedCall�,multi_head_attention/StatefulPartitionedCall�.multi_head_attention_1/StatefulPartitionedCall�*positional_encoder/StatefulPartitionedCall�"sequential/StatefulPartitionedCall�$sequential_1/StatefulPartitionedCall�)tubelet_embedding/StatefulPartitionedCall�
)tubelet_embedding/StatefulPartitionedCallStatefulPartitionedCallinput_1tubelet_embedding_22952tubelet_embedding_22954*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������
@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_tubelet_embedding_layer_call_and_return_conditional_losses_22951�
*positional_encoder/StatefulPartitionedCallStatefulPartitionedCall2tubelet_embedding/StatefulPartitionedCall:output:0positional_encoder_22968positional_encoder_22970*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������
@*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *V
fQRO
M__inference_positional_encoder_layer_call_and_return_conditional_losses_22967�
+layer_normalization/StatefulPartitionedCallStatefulPartitionedCall3positional_encoder/StatefulPartitionedCall:output:0layer_normalization_22995layer_normalization_22997*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������
@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *W
fRRP
N__inference_layer_normalization_layer_call_and_return_conditional_losses_22994�
,multi_head_attention/StatefulPartitionedCallStatefulPartitionedCall4layer_normalization/StatefulPartitionedCall:output:04layer_normalization/StatefulPartitionedCall:output:0multi_head_attention_23042multi_head_attention_23044multi_head_attention_23046multi_head_attention_23048multi_head_attention_23050multi_head_attention_23052multi_head_attention_23054multi_head_attention_23056*
Tin
2
*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������
@**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8� *X
fSRQ
O__inference_multi_head_attention_layer_call_and_return_conditional_losses_23041�
add/PartitionedCallPartitionedCall5multi_head_attention/StatefulPartitionedCall:output:03positional_encoder/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������
@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *G
fBR@
>__inference_add_layer_call_and_return_conditional_losses_23064�
-layer_normalization_1/StatefulPartitionedCallStatefulPartitionedCalladd/PartitionedCall:output:0layer_normalization_1_23088layer_normalization_1_23090*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������
@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Y
fTRR
P__inference_layer_normalization_1_layer_call_and_return_conditional_losses_23087�
"sequential/StatefulPartitionedCallStatefulPartitionedCall6layer_normalization_1/StatefulPartitionedCall:output:0sequential_23093sequential_23095sequential_23097sequential_23099*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������
@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_22713�
add_1/PartitionedCallPartitionedCall+sequential/StatefulPartitionedCall:output:0add/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������
@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_add_1_layer_call_and_return_conditional_losses_23107�
-layer_normalization_2/StatefulPartitionedCallStatefulPartitionedCalladd_1/PartitionedCall:output:0layer_normalization_2_23131layer_normalization_2_23133*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������
@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Y
fTRR
P__inference_layer_normalization_2_layer_call_and_return_conditional_losses_23130�
.multi_head_attention_1/StatefulPartitionedCallStatefulPartitionedCall6layer_normalization_2/StatefulPartitionedCall:output:06layer_normalization_2/StatefulPartitionedCall:output:0multi_head_attention_1_23178multi_head_attention_1_23180multi_head_attention_1_23182multi_head_attention_1_23184multi_head_attention_1_23186multi_head_attention_1_23188multi_head_attention_1_23190multi_head_attention_1_23192*
Tin
2
*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������
@**
_read_only_resource_inputs

	*-
config_proto

CPU

GPU 2J 8� *Z
fURS
Q__inference_multi_head_attention_1_layer_call_and_return_conditional_losses_23177�
add_2/PartitionedCallPartitionedCall7multi_head_attention_1/StatefulPartitionedCall:output:0add_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������
@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_add_2_layer_call_and_return_conditional_losses_23200�
-layer_normalization_3/StatefulPartitionedCallStatefulPartitionedCalladd_2/PartitionedCall:output:0layer_normalization_3_23224layer_normalization_3_23226*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������
@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Y
fTRR
P__inference_layer_normalization_3_layer_call_and_return_conditional_losses_23223�
$sequential_1/StatefulPartitionedCallStatefulPartitionedCall6layer_normalization_3/StatefulPartitionedCall:output:0sequential_1_23229sequential_1_23231sequential_1_23233sequential_1_23235*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������
@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *P
fKRI
G__inference_sequential_1_layer_call_and_return_conditional_losses_22861�
add_3/PartitionedCallPartitionedCall-sequential_1/StatefulPartitionedCall:output:0add_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������
@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_add_3_layer_call_and_return_conditional_losses_23243�
-layer_normalization_4/StatefulPartitionedCallStatefulPartitionedCalladd_3/PartitionedCall:output:0layer_normalization_4_23267layer_normalization_4_23269*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������
@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *Y
fTRR
P__inference_layer_normalization_4_layer_call_and_return_conditional_losses_23266�
(global_average_pooling1d/PartitionedCallPartitionedCall6layer_normalization_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *\
fWRU
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_22925�
dense_4/StatefulPartitionedCallStatefulPartitionedCall1global_average_pooling1d/PartitionedCall:output:0dense_4_23284dense_4_23286*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_23283w
IdentityIdentity(dense_4/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp ^dense_4/StatefulPartitionedCall,^layer_normalization/StatefulPartitionedCall.^layer_normalization_1/StatefulPartitionedCall.^layer_normalization_2/StatefulPartitionedCall.^layer_normalization_3/StatefulPartitionedCall.^layer_normalization_4/StatefulPartitionedCall-^multi_head_attention/StatefulPartitionedCall/^multi_head_attention_1/StatefulPartitionedCall+^positional_encoder/StatefulPartitionedCall#^sequential/StatefulPartitionedCall%^sequential_1/StatefulPartitionedCall*^tubelet_embedding/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapesx
v:���������*��: : :�
: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2Z
+layer_normalization/StatefulPartitionedCall+layer_normalization/StatefulPartitionedCall2^
-layer_normalization_1/StatefulPartitionedCall-layer_normalization_1/StatefulPartitionedCall2^
-layer_normalization_2/StatefulPartitionedCall-layer_normalization_2/StatefulPartitionedCall2^
-layer_normalization_3/StatefulPartitionedCall-layer_normalization_3/StatefulPartitionedCall2^
-layer_normalization_4/StatefulPartitionedCall-layer_normalization_4/StatefulPartitionedCall2\
,multi_head_attention/StatefulPartitionedCall,multi_head_attention/StatefulPartitionedCall2`
.multi_head_attention_1/StatefulPartitionedCall.multi_head_attention_1/StatefulPartitionedCall2X
*positional_encoder/StatefulPartitionedCall*positional_encoder/StatefulPartitionedCall2H
"sequential/StatefulPartitionedCall"sequential/StatefulPartitionedCall2L
$sequential_1/StatefulPartitionedCall$sequential_1/StatefulPartitionedCall2V
)tubelet_embedding/StatefulPartitionedCall)tubelet_embedding/StatefulPartitionedCall:^ Z
5
_output_shapes#
!:���������*��
!
_user_specified_name	input_1:%!

_user_specified_name22952:%!

_user_specified_name22954:B>

_output_shapes	
:�


_user_specified_name22968:%!

_user_specified_name22970:%!

_user_specified_name22995:%!

_user_specified_name22997:%!

_user_specified_name23042:%!

_user_specified_name23044:%	!

_user_specified_name23046:%
!

_user_specified_name23048:%!

_user_specified_name23050:%!

_user_specified_name23052:%!

_user_specified_name23054:%!

_user_specified_name23056:%!

_user_specified_name23088:%!

_user_specified_name23090:%!

_user_specified_name23093:%!

_user_specified_name23095:%!

_user_specified_name23097:%!

_user_specified_name23099:%!

_user_specified_name23131:%!

_user_specified_name23133:%!

_user_specified_name23178:%!

_user_specified_name23180:%!

_user_specified_name23182:%!

_user_specified_name23184:%!

_user_specified_name23186:%!

_user_specified_name23188:%!

_user_specified_name23190:%!

_user_specified_name23192:%!

_user_specified_name23224:% !

_user_specified_name23226:%!!

_user_specified_name23229:%"!

_user_specified_name23231:%#!

_user_specified_name23233:%$!

_user_specified_name23235:%%!

_user_specified_name23267:%&!

_user_specified_name23269:%'!

_user_specified_name23284:%(!

_user_specified_name23286
�
l
@__inference_add_1_layer_call_and_return_conditional_losses_24158
inputs_0
inputs_1
identityW
addAddV2inputs_0inputs_1*
T0*,
_output_shapes
:����������
@T
IdentityIdentityadd:z:0*
T0*,
_output_shapes
:����������
@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:����������
@:����������
@:V R
,
_output_shapes
:����������
@
"
_user_specified_name
inputs_0:VR
,
_output_shapes
:����������
@
"
_user_specified_name
inputs_1
�
�
P__inference_layer_normalization_1_layer_call_and_return_conditional_losses_24146

inputs3
%batchnorm_mul_readvariableop_resource:@/
!batchnorm_readvariableop_resource:@
identity��batchnorm/ReadVariableOp�batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*,
_output_shapes
:����������
*
	keep_dims(r
moments/StopGradientStopGradientmoments/mean:output:0*
T0*,
_output_shapes
:����������
�
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*,
_output_shapes
:����������
@l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*,
_output_shapes
:����������
*
	keep_dims(T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *�7�5�
batchnorm/addAddV2moments/variance:output:0batchnorm/add/y:output:0*
T0*,
_output_shapes
:����������
b
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*,
_output_shapes
:����������
~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype0�
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������
@h
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*,
_output_shapes
:����������
@w
batchnorm/mul_2Mulmoments/mean:output:0batchnorm/mul:z:0*
T0*,
_output_shapes
:����������
@v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype0�
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*,
_output_shapes
:����������
@w
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*,
_output_shapes
:����������
@g
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*,
_output_shapes
:����������
@\
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������
@: : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:T P
,
_output_shapes
:����������
@
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
'__inference_dense_4_layer_call_fn_24416

inputs
unknown:@
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_23283o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������@
 
_user_specified_nameinputs:%!

_user_specified_name24410:%!

_user_specified_name24412
�4
�
O__inference_multi_head_attention_layer_call_and_return_conditional_losses_24068	
query	
valueA
+query_einsum_einsum_readvariableop_resource:@ 3
!query_add_readvariableop_resource: ?
)key_einsum_einsum_readvariableop_resource:@ 1
key_add_readvariableop_resource: A
+value_einsum_einsum_readvariableop_resource:@ 3
!value_add_readvariableop_resource: L
6attention_output_einsum_einsum_readvariableop_resource: @:
,attention_output_add_readvariableop_resource:@
identity��#attention_output/add/ReadVariableOp�-attention_output/einsum/Einsum/ReadVariableOp�key/add/ReadVariableOp� key/einsum/Einsum/ReadVariableOp�query/add/ReadVariableOp�"query/einsum/Einsum/ReadVariableOp�value/add/ReadVariableOp�"value/einsum/Einsum/ReadVariableOp�
"query/einsum/Einsum/ReadVariableOpReadVariableOp+query_einsum_einsum_readvariableop_resource*"
_output_shapes
:@ *
dtype0�
query/einsum/EinsumEinsumquery*query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:����������
 *
equationabc,cde->abdez
query/add/ReadVariableOpReadVariableOp!query_add_readvariableop_resource*
_output_shapes

: *
dtype0�
	query/addAddV2query/einsum/Einsum:output:0 query/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������
 �
 key/einsum/Einsum/ReadVariableOpReadVariableOp)key_einsum_einsum_readvariableop_resource*"
_output_shapes
:@ *
dtype0�
key/einsum/EinsumEinsumvalue(key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:����������
 *
equationabc,cde->abdev
key/add/ReadVariableOpReadVariableOpkey_add_readvariableop_resource*
_output_shapes

: *
dtype0�
key/addAddV2key/einsum/Einsum:output:0key/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������
 �
"value/einsum/Einsum/ReadVariableOpReadVariableOp+value_einsum_einsum_readvariableop_resource*"
_output_shapes
:@ *
dtype0�
value/einsum/EinsumEinsumvalue*value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:����������
 *
equationabc,cde->abdez
value/add/ReadVariableOpReadVariableOp!value_add_readvariableop_resource*
_output_shapes

: *
dtype0�
	value/addAddV2value/einsum/Einsum:output:0 value/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:����������
 J
Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *�5>d
MulMulquery/add:z:0Mul/y:output:0*
T0*0
_output_shapes
:����������
 �
einsum/EinsumEinsumkey/add:z:0Mul:z:0*
N*
T0*1
_output_shapes
:����������
�
*
equationaecd,abcd->acben
softmax/SoftmaxSoftmaxeinsum/Einsum:output:0*
T0*1
_output_shapes
:����������
�
Z
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?�
dropout/dropout/MulMulsoftmax/Softmax:softmax:0dropout/dropout/Const:output:0*
T0*1
_output_shapes
:����������
�
l
dropout/dropout/ShapeShapesoftmax/Softmax:softmax:0*
T0*
_output_shapes
::���
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*1
_output_shapes
:����������
�
*
dtype0*

seedMc
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*1
_output_shapes
:����������
�
\
dropout/dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    �
dropout/dropout/SelectV2SelectV2 dropout/dropout/GreaterEqual:z:0dropout/dropout/Mul:z:0 dropout/dropout/Const_1:output:0*
T0*1
_output_shapes
:����������
�
�
einsum_1/EinsumEinsum!dropout/dropout/SelectV2:output:0value/add:z:0*
N*
T0*0
_output_shapes
:����������
 *
equationacbe,aecd->abcd�
-attention_output/einsum/Einsum/ReadVariableOpReadVariableOp6attention_output_einsum_einsum_readvariableop_resource*"
_output_shapes
: @*
dtype0�
attention_output/einsum/EinsumEinsumeinsum_1/Einsum:output:05attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:����������
@*
equationabcd,cde->abe�
#attention_output/add/ReadVariableOpReadVariableOp,attention_output_add_readvariableop_resource*
_output_shapes
:@*
dtype0�
attention_output/addAddV2'attention_output/einsum/Einsum:output:0+attention_output/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������
@l
IdentityIdentityattention_output/add:z:0^NoOp*
T0*,
_output_shapes
:����������
@�
NoOpNoOp$^attention_output/add/ReadVariableOp.^attention_output/einsum/Einsum/ReadVariableOp^key/add/ReadVariableOp!^key/einsum/Einsum/ReadVariableOp^query/add/ReadVariableOp#^query/einsum/Einsum/ReadVariableOp^value/add/ReadVariableOp#^value/einsum/Einsum/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:����������
@:����������
@: : : : : : : : 2J
#attention_output/add/ReadVariableOp#attention_output/add/ReadVariableOp2^
-attention_output/einsum/Einsum/ReadVariableOp-attention_output/einsum/Einsum/ReadVariableOp20
key/add/ReadVariableOpkey/add/ReadVariableOp2D
 key/einsum/Einsum/ReadVariableOp key/einsum/Einsum/ReadVariableOp24
query/add/ReadVariableOpquery/add/ReadVariableOp2H
"query/einsum/Einsum/ReadVariableOp"query/einsum/Einsum/ReadVariableOp24
value/add/ReadVariableOpvalue/add/ReadVariableOp2H
"value/einsum/Einsum/ReadVariableOp"value/einsum/Einsum/ReadVariableOp:S O
,
_output_shapes
:����������
@

_user_specified_namequery:SO
,
_output_shapes
:����������
@

_user_specified_namevalue:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource
�
�
'__inference_dense_1_layer_call_fn_24483

inputs
unknown:	�@
	unknown_0:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������
@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_22706t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:����������
@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:����������
�: : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
-
_output_shapes
:����������
�
 
_user_specified_nameinputs:%!

_user_specified_name24477:%!

_user_specified_name24479
�
l
@__inference_add_2_layer_call_and_return_conditional_losses_24322
inputs_0
inputs_1
identityW
addAddV2inputs_0inputs_1*
T0*,
_output_shapes
:����������
@T
IdentityIdentityadd:z:0*
T0*,
_output_shapes
:����������
@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*C
_input_shapes2
0:����������
@:����������
@:V R
,
_output_shapes
:����������
@
"
_user_specified_name
inputs_0:VR
,
_output_shapes
:����������
@
"
_user_specified_name
inputs_1
�	
�
*__inference_sequential_layer_call_fn_22740
dense_input
unknown:	@�
	unknown_0:	�
	unknown_1:	�@
	unknown_2:@
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalldense_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:����������
@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_22713t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:����������
@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������
@: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
,
_output_shapes
:����������
@
%
_user_specified_namedense_input:%!

_user_specified_name22730:%!

_user_specified_name22732:%!

_user_specified_name22734:%!

_user_specified_name22736"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
I
input_1>
serving_default_input_1:0���������*��;
dense_40
StatefulPartitionedCall:0���������tensorflow/serving/predict:�
�
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer-5
layer_with_weights-4
layer-6
layer_with_weights-5
layer-7
	layer-8

layer_with_weights-6

layer-9
layer_with_weights-7
layer-10
layer-11
layer_with_weights-8
layer-12
layer_with_weights-9
layer-13
layer-14
layer_with_weights-10
layer-15
layer-16
layer_with_weights-11
layer-17
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer

signatures"
_tf_keras_network
"
_tf_keras_input_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
*!&call_and_return_all_conditional_losses
"
projection
#flatten"
_tf_keras_layer
�
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses
*position_embedding"
_tf_keras_layer
�
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses
1axis
	2gamma
3beta"
_tf_keras_layer
�
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses
:_query_dense
;
_key_dense
<_value_dense
=_softmax
>_dropout_layer
?_output_dense"
_tf_keras_layer
�
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
D__call__
*E&call_and_return_all_conditional_losses"
_tf_keras_layer
�
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
J__call__
*K&call_and_return_all_conditional_losses
Laxis
	Mgamma
Nbeta"
_tf_keras_layer
�
Olayer_with_weights-0
Olayer-0
Player_with_weights-1
Player-1
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
U__call__
*V&call_and_return_all_conditional_losses"
_tf_keras_sequential
�
W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api
[__call__
*\&call_and_return_all_conditional_losses"
_tf_keras_layer
�
]	variables
^trainable_variables
_regularization_losses
`	keras_api
a__call__
*b&call_and_return_all_conditional_losses
caxis
	dgamma
ebeta"
_tf_keras_layer
�
f	variables
gtrainable_variables
hregularization_losses
i	keras_api
j__call__
*k&call_and_return_all_conditional_losses
l_query_dense
m
_key_dense
n_value_dense
o_softmax
p_dropout_layer
q_output_dense"
_tf_keras_layer
�
r	variables
strainable_variables
tregularization_losses
u	keras_api
v__call__
*w&call_and_return_all_conditional_losses"
_tf_keras_layer
�
x	variables
ytrainable_variables
zregularization_losses
{	keras_api
|__call__
*}&call_and_return_all_conditional_losses
~axis
	gamma
	�beta"
_tf_keras_layer
�
�layer_with_weights-0
�layer-0
�layer_with_weights-1
�layer-1
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_sequential
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis

�gamma
	�beta"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias"
_tf_keras_layer
�
�0
�1
�2
23
34
�5
�6
�7
�8
�9
�10
�11
�12
M13
N14
�15
�16
�17
�18
d19
e20
�21
�22
�23
�24
�25
�26
�27
�28
29
�30
�31
�32
�33
�34
�35
�36
�37
�38"
trackable_list_wrapper
�
�0
�1
�2
23
34
�5
�6
�7
�8
�9
�10
�11
�12
M13
N14
�15
�16
�17
�18
d19
e20
�21
�22
�23
�24
�25
�26
�27
�28
29
�30
�31
�32
�33
�34
�35
�36
�37
�38"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
%__inference_model_layer_call_fn_23546
%__inference_model_layer_call_fn_23631�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
@__inference_model_layer_call_and_return_conditional_losses_23290
@__inference_model_layer_call_and_return_conditional_losses_23461�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�	capture_2B�
 __inference__wrapped_model_22623input_1"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�	capture_2
�
�
_variables
�_iterations
�_learning_rate
�_index_dict
�
_momentums
�_velocities
�_update_step_xla"
experimentalOptimizer
-
�serving_default"
signature_map
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
1__inference_tubelet_embedding_layer_call_fn_23912�
���
FullArgSpec
args�

jvideos
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
L__inference_tubelet_embedding_layer_call_and_return_conditional_losses_23931�
���
FullArgSpec
args�

jvideos
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
(
�0"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
2__inference_positional_encoder_layer_call_fn_23940�
���
FullArgSpec
args�
jencoded_tokens
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
M__inference_positional_encoder_layer_call_and_return_conditional_losses_23951�
���
FullArgSpec
args�
jencoded_tokens
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�
embeddings"
_tf_keras_layer
.
20
31"
trackable_list_wrapper
.
20
31"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
3__inference_layer_normalization_layer_call_fn_23960�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
N__inference_layer_normalization_layer_call_and_return_conditional_losses_23982�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
':%@2layer_normalization/gamma
&:$@2layer_normalization/beta
`
�0
�1
�2
�3
�4
�5
�6
�7"
trackable_list_wrapper
`
�0
�1
�2
�3
�4
�5
�6
�7"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
4__inference_multi_head_attention_layer_call_fn_24004
4__inference_multi_head_attention_layer_call_fn_24026�
���
FullArgSpecp
argsh�e
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 #
defaults�

 

 
p 
p 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
O__inference_multi_head_attention_layer_call_and_return_conditional_losses_24068
O__inference_multi_head_attention_layer_call_and_return_conditional_losses_24103�
���
FullArgSpecp
argsh�e
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 #
defaults�

 

 
p 
p 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
@	variables
Atrainable_variables
Bregularization_losses
D__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
#__inference_add_layer_call_fn_24109�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
>__inference_add_layer_call_and_return_conditional_losses_24115�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
M0
N1"
trackable_list_wrapper
.
M0
N1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
F	variables
Gtrainable_variables
Hregularization_losses
J__call__
*K&call_and_return_all_conditional_losses
&K"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
5__inference_layer_normalization_1_layer_call_fn_24124�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
P__inference_layer_normalization_1_layer_call_and_return_conditional_losses_24146�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
):'@2layer_normalization_1/gamma
(:&@2layer_normalization_1/beta
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias"
_tf_keras_layer
@
�0
�1
�2
�3"
trackable_list_wrapper
@
�0
�1
�2
�3"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
Q	variables
Rtrainable_variables
Sregularization_losses
U__call__
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
*__inference_sequential_layer_call_fn_22740
*__inference_sequential_layer_call_fn_22753�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
E__inference_sequential_layer_call_and_return_conditional_losses_22713
E__inference_sequential_layer_call_and_return_conditional_losses_22727�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
W	variables
Xtrainable_variables
Yregularization_losses
[__call__
*\&call_and_return_all_conditional_losses
&\"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
%__inference_add_1_layer_call_fn_24152�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
@__inference_add_1_layer_call_and_return_conditional_losses_24158�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
d0
e1"
trackable_list_wrapper
.
d0
e1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
]	variables
^trainable_variables
_regularization_losses
a__call__
*b&call_and_return_all_conditional_losses
&b"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
5__inference_layer_normalization_2_layer_call_fn_24167�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
P__inference_layer_normalization_2_layer_call_and_return_conditional_losses_24189�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
):'@2layer_normalization_2/gamma
(:&@2layer_normalization_2/beta
`
�0
�1
�2
�3
�4
�5
�6
�7"
trackable_list_wrapper
`
�0
�1
�2
�3
�4
�5
�6
�7"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
f	variables
gtrainable_variables
hregularization_losses
j__call__
*k&call_and_return_all_conditional_losses
&k"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
6__inference_multi_head_attention_1_layer_call_fn_24211
6__inference_multi_head_attention_1_layer_call_fn_24233�
���
FullArgSpecp
argsh�e
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 #
defaults�

 

 
p 
p 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
Q__inference_multi_head_attention_1_layer_call_and_return_conditional_losses_24275
Q__inference_multi_head_attention_1_layer_call_and_return_conditional_losses_24310�
���
FullArgSpecp
argsh�e
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 #
defaults�

 

 
p 
p 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�partial_output_shape
�full_output_shape
�kernel
	�bias"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
r	variables
strainable_variables
tregularization_losses
v__call__
*w&call_and_return_all_conditional_losses
&w"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
%__inference_add_2_layer_call_fn_24316�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
@__inference_add_2_layer_call_and_return_conditional_losses_24322�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
/
0
�1"
trackable_list_wrapper
/
0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
x	variables
ytrainable_variables
zregularization_losses
|__call__
*}&call_and_return_all_conditional_losses
&}"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
5__inference_layer_normalization_3_layer_call_fn_24331�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
P__inference_layer_normalization_3_layer_call_and_return_conditional_losses_24353�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
):'@2layer_normalization_3/gamma
(:&@2layer_normalization_3/beta
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�kernel
	�bias"
_tf_keras_layer
@
�0
�1
�2
�3"
trackable_list_wrapper
@
�0
�1
�2
�3"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
,__inference_sequential_1_layer_call_fn_22888
,__inference_sequential_1_layer_call_fn_22901�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
G__inference_sequential_1_layer_call_and_return_conditional_losses_22861
G__inference_sequential_1_layer_call_and_return_conditional_losses_22875�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
%__inference_add_3_layer_call_fn_24359�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
@__inference_add_3_layer_call_and_return_conditional_losses_24365�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
5__inference_layer_normalization_4_layer_call_fn_24374�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
P__inference_layer_normalization_4_layer_call_and_return_conditional_losses_24396�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
):'@2layer_normalization_4/gamma
(:&@2layer_normalization_4/beta
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
8__inference_global_average_pooling1d_layer_call_fn_24401�
���
FullArgSpec
args�
jinputs
jmask
varargs
 
varkw
 
defaults�

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_24407�
���
FullArgSpec
args�
jinputs
jmask
varargs
 
varkw
 
defaults�

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
'__inference_dense_4_layer_call_fn_24416�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
B__inference_dense_4_layer_call_and_return_conditional_losses_24427�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 :@2dense_4/kernel
:2dense_4/bias
=:;@2tubelet_embedding/conv3d/kernel
+:)@2tubelet_embedding/conv3d/bias
::8	�
@2'positional_encoder/embedding/embeddings
7:5@ 2!multi_head_attention/query/kernel
1:/ 2multi_head_attention/query/bias
5:3@ 2multi_head_attention/key/kernel
/:- 2multi_head_attention/key/bias
7:5@ 2!multi_head_attention/value/kernel
1:/ 2multi_head_attention/value/bias
B:@ @2,multi_head_attention/attention_output/kernel
8:6@2*multi_head_attention/attention_output/bias
:	@�2dense/kernel
:�2
dense/bias
!:	�@2dense_1/kernel
:@2dense_1/bias
9:7@ 2#multi_head_attention_1/query/kernel
3:1 2!multi_head_attention_1/query/bias
7:5@ 2!multi_head_attention_1/key/kernel
1:/ 2multi_head_attention_1/key/bias
9:7@ 2#multi_head_attention_1/value/kernel
3:1 2!multi_head_attention_1/value/bias
D:B @2.multi_head_attention_1/attention_output/kernel
::8@2,multi_head_attention_1/attention_output/bias
!:	@�2dense_2/kernel
:�2dense_2/bias
!:	�@2dense_3/kernel
:@2dense_3/bias
 "
trackable_list_wrapper
�
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17"
trackable_list_wrapper
H
�0
�1
�2
�3
�4"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�
�	capture_2B�
%__inference_model_layer_call_fn_23546input_1"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�	capture_2
�
�	capture_2B�
%__inference_model_layer_call_fn_23631input_1"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�	capture_2
�
�	capture_2B�
@__inference_model_layer_call_and_return_conditional_losses_23290input_1"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�	capture_2
�
�	capture_2B�
@__inference_model_layer_call_and_return_conditional_losses_23461input_1"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�	capture_2
J
Constjtf.TrackableConstant
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29
�30
�31
�32
�33
�34
�35
�36
�37
�38
�39
�40
�41
�42
�43
�44
�45
�46
�47
�48
�49
�50
�51
�52
�53
�54
�55
�56
�57
�58
�59
�60
�61
�62
�63
�64
�65
�66
�67
�68
�69
�70
�71
�72
�73
�74
�75
�76
�77
�78"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29
�30
�31
�32
�33
�34
�35
�36
�37
�38"
trackable_list_wrapper
�
�0
�1
�2
�3
�4
�5
�6
�7
�8
�9
�10
�11
�12
�13
�14
�15
�16
�17
�18
�19
�20
�21
�22
�23
�24
�25
�26
�27
�28
�29
�30
�31
�32
�33
�34
�35
�36
�37
�38"
trackable_list_wrapper
�2��
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
�
�	capture_2B�
#__inference_signature_wrapper_23903input_1"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�	capture_2
 "
trackable_list_wrapper
.
"0
#1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
1__inference_tubelet_embedding_layer_call_fn_23912videos"�
���
FullArgSpec
args�

jvideos
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
L__inference_tubelet_embedding_layer_call_and_return_conditional_losses_23931videos"�
���
FullArgSpec
args�

jvideos
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
'
*0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�
�	capture_0B�
2__inference_positional_encoder_layer_call_fn_23940encoded_tokens"�
���
FullArgSpec
args�
jencoded_tokens
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�	capture_0
�
�	capture_0B�
M__inference_positional_encoder_layer_call_and_return_conditional_losses_23951encoded_tokens"�
���
FullArgSpec
args�
jencoded_tokens
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�	capture_0
(
�0"
trackable_list_wrapper
(
�0"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
3__inference_layer_normalization_layer_call_fn_23960inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
N__inference_layer_normalization_layer_call_and_return_conditional_losses_23982inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
J
:0
;1
<2
=3
>4
?5"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
4__inference_multi_head_attention_layer_call_fn_24004queryvalue"�
���
FullArgSpecp
argsh�e
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 #
defaults�

 

 
p 
p 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
4__inference_multi_head_attention_layer_call_fn_24026queryvalue"�
���
FullArgSpecp
argsh�e
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 #
defaults�

 

 
p 
p 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
O__inference_multi_head_attention_layer_call_and_return_conditional_losses_24068queryvalue"�
���
FullArgSpecp
argsh�e
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 #
defaults�

 

 
p 
p 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
O__inference_multi_head_attention_layer_call_and_return_conditional_losses_24103queryvalue"�
���
FullArgSpecp
argsh�e
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 #
defaults�

 

 
p 
p 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�
jinputs
jmask
varargs
 
varkw
 
defaults�

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jinputs
jmask
varargs
 
varkw
 
defaults�

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
"
_generic_user_object
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
#__inference_add_layer_call_fn_24109inputs_0inputs_1"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
>__inference_add_layer_call_and_return_conditional_losses_24115inputs_0inputs_1"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
5__inference_layer_normalization_1_layer_call_fn_24124inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
P__inference_layer_normalization_1_layer_call_and_return_conditional_losses_24146inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
%__inference_dense_layer_call_fn_24436�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
@__inference_dense_layer_call_and_return_conditional_losses_24474�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
'__inference_dense_1_layer_call_fn_24483�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
B__inference_dense_1_layer_call_and_return_conditional_losses_24521�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
.
O0
P1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_sequential_layer_call_fn_22740dense_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
*__inference_sequential_layer_call_fn_22753dense_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_sequential_layer_call_and_return_conditional_losses_22713dense_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_sequential_layer_call_and_return_conditional_losses_22727dense_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
%__inference_add_1_layer_call_fn_24152inputs_0inputs_1"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
@__inference_add_1_layer_call_and_return_conditional_losses_24158inputs_0inputs_1"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
5__inference_layer_normalization_2_layer_call_fn_24167inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
P__inference_layer_normalization_2_layer_call_and_return_conditional_losses_24189inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
J
l0
m1
n2
o3
p4
q5"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
6__inference_multi_head_attention_1_layer_call_fn_24211queryvalue"�
���
FullArgSpecp
argsh�e
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 #
defaults�

 

 
p 
p 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
6__inference_multi_head_attention_1_layer_call_fn_24233queryvalue"�
���
FullArgSpecp
argsh�e
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 #
defaults�

 

 
p 
p 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
Q__inference_multi_head_attention_1_layer_call_and_return_conditional_losses_24275queryvalue"�
���
FullArgSpecp
argsh�e
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 #
defaults�

 

 
p 
p 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
Q__inference_multi_head_attention_1_layer_call_and_return_conditional_losses_24310queryvalue"�
���
FullArgSpecp
argsh�e
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
juse_causal_mask
varargs
 
varkw
 #
defaults�

 

 
p 
p 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�
jinputs
jmask
varargs
 
varkw
 
defaults�

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jinputs
jmask
varargs
 
varkw
 
defaults�

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec!
args�
jinputs

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
"
_generic_user_object
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
%__inference_add_2_layer_call_fn_24316inputs_0inputs_1"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
@__inference_add_2_layer_call_and_return_conditional_losses_24322inputs_0inputs_1"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
5__inference_layer_normalization_3_layer_call_fn_24331inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
P__inference_layer_normalization_3_layer_call_and_return_conditional_losses_24353inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
'__inference_dense_2_layer_call_fn_24530�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
B__inference_dense_2_layer_call_and_return_conditional_losses_24568�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
0
�0
�1"
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
'__inference_dense_3_layer_call_fn_24577�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
B__inference_dense_3_layer_call_and_return_conditional_losses_24615�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
 "
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
,__inference_sequential_1_layer_call_fn_22888dense_2_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
,__inference_sequential_1_layer_call_fn_22901dense_2_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_sequential_1_layer_call_and_return_conditional_losses_22861dense_2_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
G__inference_sequential_1_layer_call_and_return_conditional_losses_22875dense_2_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
%__inference_add_3_layer_call_fn_24359inputs_0inputs_1"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
@__inference_add_3_layer_call_and_return_conditional_losses_24365inputs_0inputs_1"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
5__inference_layer_normalization_4_layer_call_fn_24374inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
P__inference_layer_normalization_4_layer_call_and_return_conditional_losses_24396inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
8__inference_global_average_pooling1d_layer_call_fn_24401inputs"�
���
FullArgSpec
args�
jinputs
jmask
varargs
 
varkw
 
defaults�

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_24407inputs"�
���
FullArgSpec
args�
jinputs
jmask
varargs
 
varkw
 
defaults�

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
'__inference_dense_4_layer_call_fn_24416inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_dense_4_layer_call_and_return_conditional_losses_24427inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
c
�	variables
�	keras_api

�total

�count
�
_fn_kwargs"
_tf_keras_metric
c
�	variables
�	keras_api

�total

�count
�
_fn_kwargs"
_tf_keras_metric
c
�	variables
�	keras_api

�total

�count
�
_fn_kwargs"
_tf_keras_metric
c
�	variables
�	keras_api

�total

�count
�
_fn_kwargs"
_tf_keras_metric
B:@@2&Adam/m/tubelet_embedding/conv3d/kernel
B:@@2&Adam/v/tubelet_embedding/conv3d/kernel
0:.@2$Adam/m/tubelet_embedding/conv3d/bias
0:.@2$Adam/v/tubelet_embedding/conv3d/bias
?:=	�
@2.Adam/m/positional_encoder/embedding/embeddings
?:=	�
@2.Adam/v/positional_encoder/embedding/embeddings
,:*@2 Adam/m/layer_normalization/gamma
,:*@2 Adam/v/layer_normalization/gamma
+:)@2Adam/m/layer_normalization/beta
+:)@2Adam/v/layer_normalization/beta
<::@ 2(Adam/m/multi_head_attention/query/kernel
<::@ 2(Adam/v/multi_head_attention/query/kernel
6:4 2&Adam/m/multi_head_attention/query/bias
6:4 2&Adam/v/multi_head_attention/query/bias
::8@ 2&Adam/m/multi_head_attention/key/kernel
::8@ 2&Adam/v/multi_head_attention/key/kernel
4:2 2$Adam/m/multi_head_attention/key/bias
4:2 2$Adam/v/multi_head_attention/key/bias
<::@ 2(Adam/m/multi_head_attention/value/kernel
<::@ 2(Adam/v/multi_head_attention/value/kernel
6:4 2&Adam/m/multi_head_attention/value/bias
6:4 2&Adam/v/multi_head_attention/value/bias
G:E @23Adam/m/multi_head_attention/attention_output/kernel
G:E @23Adam/v/multi_head_attention/attention_output/kernel
=:;@21Adam/m/multi_head_attention/attention_output/bias
=:;@21Adam/v/multi_head_attention/attention_output/bias
.:,@2"Adam/m/layer_normalization_1/gamma
.:,@2"Adam/v/layer_normalization_1/gamma
-:+@2!Adam/m/layer_normalization_1/beta
-:+@2!Adam/v/layer_normalization_1/beta
$:"	@�2Adam/m/dense/kernel
$:"	@�2Adam/v/dense/kernel
:�2Adam/m/dense/bias
:�2Adam/v/dense/bias
&:$	�@2Adam/m/dense_1/kernel
&:$	�@2Adam/v/dense_1/kernel
:@2Adam/m/dense_1/bias
:@2Adam/v/dense_1/bias
.:,@2"Adam/m/layer_normalization_2/gamma
.:,@2"Adam/v/layer_normalization_2/gamma
-:+@2!Adam/m/layer_normalization_2/beta
-:+@2!Adam/v/layer_normalization_2/beta
>:<@ 2*Adam/m/multi_head_attention_1/query/kernel
>:<@ 2*Adam/v/multi_head_attention_1/query/kernel
8:6 2(Adam/m/multi_head_attention_1/query/bias
8:6 2(Adam/v/multi_head_attention_1/query/bias
<::@ 2(Adam/m/multi_head_attention_1/key/kernel
<::@ 2(Adam/v/multi_head_attention_1/key/kernel
6:4 2&Adam/m/multi_head_attention_1/key/bias
6:4 2&Adam/v/multi_head_attention_1/key/bias
>:<@ 2*Adam/m/multi_head_attention_1/value/kernel
>:<@ 2*Adam/v/multi_head_attention_1/value/kernel
8:6 2(Adam/m/multi_head_attention_1/value/bias
8:6 2(Adam/v/multi_head_attention_1/value/bias
I:G @25Adam/m/multi_head_attention_1/attention_output/kernel
I:G @25Adam/v/multi_head_attention_1/attention_output/kernel
?:=@23Adam/m/multi_head_attention_1/attention_output/bias
?:=@23Adam/v/multi_head_attention_1/attention_output/bias
.:,@2"Adam/m/layer_normalization_3/gamma
.:,@2"Adam/v/layer_normalization_3/gamma
-:+@2!Adam/m/layer_normalization_3/beta
-:+@2!Adam/v/layer_normalization_3/beta
&:$	@�2Adam/m/dense_2/kernel
&:$	@�2Adam/v/dense_2/kernel
 :�2Adam/m/dense_2/bias
 :�2Adam/v/dense_2/bias
&:$	�@2Adam/m/dense_3/kernel
&:$	�@2Adam/v/dense_3/kernel
:@2Adam/m/dense_3/bias
:@2Adam/v/dense_3/bias
.:,@2"Adam/m/layer_normalization_4/gamma
.:,@2"Adam/v/layer_normalization_4/gamma
-:+@2!Adam/m/layer_normalization_4/beta
-:+@2!Adam/v/layer_normalization_4/beta
%:#@2Adam/m/dense_4/kernel
%:#@2Adam/v/dense_4/kernel
:2Adam/m/dense_4/bias
:2Adam/v/dense_4/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
%__inference_dense_layer_call_fn_24436inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
@__inference_dense_layer_call_and_return_conditional_losses_24474inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
'__inference_dense_1_layer_call_fn_24483inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_dense_1_layer_call_and_return_conditional_losses_24521inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
'__inference_dense_2_layer_call_fn_24530inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_dense_2_layer_call_and_return_conditional_losses_24568inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
'__inference_dense_3_layer_call_fn_24577inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_dense_3_layer_call_and_return_conditional_losses_24615inputs"�
���
FullArgSpec
args�

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper�
 __inference__wrapped_model_22623�I����23��������MN����de�����������������>�;
4�1
/�,
input_1���������*��
� "1�.
,
dense_4!�
dense_4����������
@__inference_add_1_layer_call_and_return_conditional_losses_24158�d�a
Z�W
U�R
'�$
inputs_0����������
@
'�$
inputs_1����������
@
� "1�.
'�$
tensor_0����������
@
� �
%__inference_add_1_layer_call_fn_24152�d�a
Z�W
U�R
'�$
inputs_0����������
@
'�$
inputs_1����������
@
� "&�#
unknown����������
@�
@__inference_add_2_layer_call_and_return_conditional_losses_24322�d�a
Z�W
U�R
'�$
inputs_0����������
@
'�$
inputs_1����������
@
� "1�.
'�$
tensor_0����������
@
� �
%__inference_add_2_layer_call_fn_24316�d�a
Z�W
U�R
'�$
inputs_0����������
@
'�$
inputs_1����������
@
� "&�#
unknown����������
@�
@__inference_add_3_layer_call_and_return_conditional_losses_24365�d�a
Z�W
U�R
'�$
inputs_0����������
@
'�$
inputs_1����������
@
� "1�.
'�$
tensor_0����������
@
� �
%__inference_add_3_layer_call_fn_24359�d�a
Z�W
U�R
'�$
inputs_0����������
@
'�$
inputs_1����������
@
� "&�#
unknown����������
@�
>__inference_add_layer_call_and_return_conditional_losses_24115�d�a
Z�W
U�R
'�$
inputs_0����������
@
'�$
inputs_1����������
@
� "1�.
'�$
tensor_0����������
@
� �
#__inference_add_layer_call_fn_24109�d�a
Z�W
U�R
'�$
inputs_0����������
@
'�$
inputs_1����������
@
� "&�#
unknown����������
@�
B__inference_dense_1_layer_call_and_return_conditional_losses_24521p��5�2
+�(
&�#
inputs����������
�
� "1�.
'�$
tensor_0����������
@
� �
'__inference_dense_1_layer_call_fn_24483e��5�2
+�(
&�#
inputs����������
�
� "&�#
unknown����������
@�
B__inference_dense_2_layer_call_and_return_conditional_losses_24568p��4�1
*�'
%�"
inputs����������
@
� "2�/
(�%
tensor_0����������
�
� �
'__inference_dense_2_layer_call_fn_24530e��4�1
*�'
%�"
inputs����������
@
� "'�$
unknown����������
��
B__inference_dense_3_layer_call_and_return_conditional_losses_24615p��5�2
+�(
&�#
inputs����������
�
� "1�.
'�$
tensor_0����������
@
� �
'__inference_dense_3_layer_call_fn_24577e��5�2
+�(
&�#
inputs����������
�
� "&�#
unknown����������
@�
B__inference_dense_4_layer_call_and_return_conditional_losses_24427e��/�,
%�"
 �
inputs���������@
� ",�)
"�
tensor_0���������
� �
'__inference_dense_4_layer_call_fn_24416Z��/�,
%�"
 �
inputs���������@
� "!�
unknown����������
@__inference_dense_layer_call_and_return_conditional_losses_24474p��4�1
*�'
%�"
inputs����������
@
� "2�/
(�%
tensor_0����������
�
� �
%__inference_dense_layer_call_fn_24436e��4�1
*�'
%�"
inputs����������
@
� "'�$
unknown����������
��
S__inference_global_average_pooling1d_layer_call_and_return_conditional_losses_24407�I�F
?�<
6�3
inputs'���������������������������

 
� "5�2
+�(
tensor_0������������������
� �
8__inference_global_average_pooling1d_layer_call_fn_24401wI�F
?�<
6�3
inputs'���������������������������

 
� "*�'
unknown�������������������
P__inference_layer_normalization_1_layer_call_and_return_conditional_losses_24146mMN4�1
*�'
%�"
inputs����������
@
� "1�.
'�$
tensor_0����������
@
� �
5__inference_layer_normalization_1_layer_call_fn_24124bMN4�1
*�'
%�"
inputs����������
@
� "&�#
unknown����������
@�
P__inference_layer_normalization_2_layer_call_and_return_conditional_losses_24189mde4�1
*�'
%�"
inputs����������
@
� "1�.
'�$
tensor_0����������
@
� �
5__inference_layer_normalization_2_layer_call_fn_24167bde4�1
*�'
%�"
inputs����������
@
� "&�#
unknown����������
@�
P__inference_layer_normalization_3_layer_call_and_return_conditional_losses_24353n�4�1
*�'
%�"
inputs����������
@
� "1�.
'�$
tensor_0����������
@
� �
5__inference_layer_normalization_3_layer_call_fn_24331c�4�1
*�'
%�"
inputs����������
@
� "&�#
unknown����������
@�
P__inference_layer_normalization_4_layer_call_and_return_conditional_losses_24396o��4�1
*�'
%�"
inputs����������
@
� "1�.
'�$
tensor_0����������
@
� �
5__inference_layer_normalization_4_layer_call_fn_24374d��4�1
*�'
%�"
inputs����������
@
� "&�#
unknown����������
@�
N__inference_layer_normalization_layer_call_and_return_conditional_losses_23982m234�1
*�'
%�"
inputs����������
@
� "1�.
'�$
tensor_0����������
@
� �
3__inference_layer_normalization_layer_call_fn_23960b234�1
*�'
%�"
inputs����������
@
� "&�#
unknown����������
@�
@__inference_model_layer_call_and_return_conditional_losses_23290�I����23��������MN����de�����������������F�C
<�9
/�,
input_1���������*��
p

 
� ",�)
"�
tensor_0���������
� �
@__inference_model_layer_call_and_return_conditional_losses_23461�I����23��������MN����de�����������������F�C
<�9
/�,
input_1���������*��
p 

 
� ",�)
"�
tensor_0���������
� �
%__inference_model_layer_call_fn_23546�I����23��������MN����de�����������������F�C
<�9
/�,
input_1���������*��
p

 
� "!�
unknown����������
%__inference_model_layer_call_fn_23631�I����23��������MN����de�����������������F�C
<�9
/�,
input_1���������*��
p 

 
� "!�
unknown����������
Q__inference_multi_head_attention_1_layer_call_and_return_conditional_losses_24275���������m�j
c�`
$�!
query����������
@
$�!
value����������
@

 

 
p 
p
p 
� "1�.
'�$
tensor_0����������
@
� �
Q__inference_multi_head_attention_1_layer_call_and_return_conditional_losses_24310���������m�j
c�`
$�!
query����������
@
$�!
value����������
@

 

 
p 
p 
p 
� "1�.
'�$
tensor_0����������
@
� �
6__inference_multi_head_attention_1_layer_call_fn_24211���������m�j
c�`
$�!
query����������
@
$�!
value����������
@

 

 
p 
p
p 
� "&�#
unknown����������
@�
6__inference_multi_head_attention_1_layer_call_fn_24233���������m�j
c�`
$�!
query����������
@
$�!
value����������
@

 

 
p 
p 
p 
� "&�#
unknown����������
@�
O__inference_multi_head_attention_layer_call_and_return_conditional_losses_24068���������m�j
c�`
$�!
query����������
@
$�!
value����������
@

 

 
p 
p
p 
� "1�.
'�$
tensor_0����������
@
� �
O__inference_multi_head_attention_layer_call_and_return_conditional_losses_24103���������m�j
c�`
$�!
query����������
@
$�!
value����������
@

 

 
p 
p 
p 
� "1�.
'�$
tensor_0����������
@
� �
4__inference_multi_head_attention_layer_call_fn_24004���������m�j
c�`
$�!
query����������
@
$�!
value����������
@

 

 
p 
p
p 
� "&�#
unknown����������
@�
4__inference_multi_head_attention_layer_call_fn_24026���������m�j
c�`
$�!
query����������
@
$�!
value����������
@

 

 
p 
p 
p 
� "&�#
unknown����������
@�
M__inference_positional_encoder_layer_call_and_return_conditional_losses_23951w��<�9
2�/
-�*
encoded_tokens����������
@
� "1�.
'�$
tensor_0����������
@
� �
2__inference_positional_encoder_layer_call_fn_23940l��<�9
2�/
-�*
encoded_tokens����������
@
� "&�#
unknown����������
@�
G__inference_sequential_1_layer_call_and_return_conditional_losses_22861�����C�@
9�6
,�)
dense_2_input����������
@
p

 
� "1�.
'�$
tensor_0����������
@
� �
G__inference_sequential_1_layer_call_and_return_conditional_losses_22875�����C�@
9�6
,�)
dense_2_input����������
@
p 

 
� "1�.
'�$
tensor_0����������
@
� �
,__inference_sequential_1_layer_call_fn_22888w����C�@
9�6
,�)
dense_2_input����������
@
p

 
� "&�#
unknown����������
@�
,__inference_sequential_1_layer_call_fn_22901w����C�@
9�6
,�)
dense_2_input����������
@
p 

 
� "&�#
unknown����������
@�
E__inference_sequential_layer_call_and_return_conditional_losses_22713�����A�>
7�4
*�'
dense_input����������
@
p

 
� "1�.
'�$
tensor_0����������
@
� �
E__inference_sequential_layer_call_and_return_conditional_losses_22727�����A�>
7�4
*�'
dense_input����������
@
p 

 
� "1�.
'�$
tensor_0����������
@
� �
*__inference_sequential_layer_call_fn_22740u����A�>
7�4
*�'
dense_input����������
@
p

 
� "&�#
unknown����������
@�
*__inference_sequential_layer_call_fn_22753u����A�>
7�4
*�'
dense_input����������
@
p 

 
� "&�#
unknown����������
@�
#__inference_signature_wrapper_23903�I����23��������MN����de�����������������I�F
� 
?�<
:
input_1/�,
input_1���������*��"1�.
,
dense_4!�
dense_4����������
L__inference_tubelet_embedding_layer_call_and_return_conditional_losses_23931x��=�:
3�0
.�+
videos���������*��
� "1�.
'�$
tensor_0����������
@
� �
1__inference_tubelet_embedding_layer_call_fn_23912m��=�:
3�0
.�+
videos���������*��
� "&�#
unknown����������
@