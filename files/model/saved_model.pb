þÊ
üÒ
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
?
Mul
x"T
y"T
z"T"
Ttype:
2	
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
@
ReadVariableOp
resource
value"dtype"
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
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
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
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
Á
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
executor_typestring ¨
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.8.22v2.8.2-0-g2ea19cbb5758æÁ

batch_normalization_10/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_10/gamma

0batch_normalization_10/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_10/gamma*
_output_shapes
:*
dtype0

batch_normalization_10/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_10/beta

/batch_normalization_10/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_10/beta*
_output_shapes
:*
dtype0

"batch_normalization_10/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"batch_normalization_10/moving_mean

6batch_normalization_10/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_10/moving_mean*
_output_shapes
:*
dtype0
¤
&batch_normalization_10/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&batch_normalization_10/moving_variance

:batch_normalization_10/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_10/moving_variance*
_output_shapes
:*
dtype0
z
dense_15/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d* 
shared_namedense_15/kernel
s
#dense_15/kernel/Read/ReadVariableOpReadVariableOpdense_15/kernel*
_output_shapes

:d*
dtype0
r
dense_15/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*
shared_namedense_15/bias
k
!dense_15/bias/Read/ReadVariableOpReadVariableOpdense_15/bias*
_output_shapes
:d*
dtype0
{
dense_16/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d* 
shared_namedense_16/kernel
t
#dense_16/kernel/Read/ReadVariableOpReadVariableOpdense_16/kernel*
_output_shapes
:	d*
dtype0
s
dense_16/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_16/bias
l
!dense_16/bias/Read/ReadVariableOpReadVariableOpdense_16/bias*
_output_shapes	
:*
dtype0

batch_normalization_11/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_11/gamma

0batch_normalization_11/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_11/gamma*
_output_shapes	
:*
dtype0

batch_normalization_11/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_11/beta

/batch_normalization_11/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_11/beta*
_output_shapes	
:*
dtype0

"batch_normalization_11/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"batch_normalization_11/moving_mean

6batch_normalization_11/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_11/moving_mean*
_output_shapes	
:*
dtype0
¥
&batch_normalization_11/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&batch_normalization_11/moving_variance

:batch_normalization_11/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_11/moving_variance*
_output_shapes	
:*
dtype0
{
dense_17/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d* 
shared_namedense_17/kernel
t
#dense_17/kernel/Read/ReadVariableOpReadVariableOpdense_17/kernel*
_output_shapes
:	d*
dtype0
r
dense_17/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*
shared_namedense_17/bias
k
!dense_17/bias/Read/ReadVariableOpReadVariableOpdense_17/bias*
_output_shapes
:d*
dtype0

batch_normalization_12/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*-
shared_namebatch_normalization_12/gamma

0batch_normalization_12/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_12/gamma*
_output_shapes
:d*
dtype0

batch_normalization_12/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*,
shared_namebatch_normalization_12/beta

/batch_normalization_12/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_12/beta*
_output_shapes
:d*
dtype0

"batch_normalization_12/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*3
shared_name$"batch_normalization_12/moving_mean

6batch_normalization_12/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_12/moving_mean*
_output_shapes
:d*
dtype0
¤
&batch_normalization_12/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*7
shared_name(&batch_normalization_12/moving_variance

:batch_normalization_12/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_12/moving_variance*
_output_shapes
:d*
dtype0
z
dense_18/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d(* 
shared_namedense_18/kernel
s
#dense_18/kernel/Read/ReadVariableOpReadVariableOpdense_18/kernel*
_output_shapes

:d(*
dtype0
r
dense_18/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*
shared_namedense_18/bias
k
!dense_18/bias/Read/ReadVariableOpReadVariableOpdense_18/bias*
_output_shapes
:(*
dtype0

batch_normalization_13/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*-
shared_namebatch_normalization_13/gamma

0batch_normalization_13/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_13/gamma*
_output_shapes
:(*
dtype0

batch_normalization_13/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*,
shared_namebatch_normalization_13/beta

/batch_normalization_13/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_13/beta*
_output_shapes
:(*
dtype0

"batch_normalization_13/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"batch_normalization_13/moving_mean

6batch_normalization_13/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_13/moving_mean*
_output_shapes
:(*
dtype0
¤
&batch_normalization_13/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*7
shared_name(&batch_normalization_13/moving_variance

:batch_normalization_13/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_13/moving_variance*
_output_shapes
:(*
dtype0
z
dense_19/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:(* 
shared_namedense_19/kernel
s
#dense_19/kernel/Read/ReadVariableOpReadVariableOpdense_19/kernel*
_output_shapes

:(*
dtype0
r
dense_19/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_19/bias
k
!dense_19/bias/Read/ReadVariableOpReadVariableOpdense_19/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
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

#Adam/batch_normalization_10/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/batch_normalization_10/gamma/m

7Adam/batch_normalization_10/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_10/gamma/m*
_output_shapes
:*
dtype0

"Adam/batch_normalization_10/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_10/beta/m

6Adam/batch_normalization_10/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_10/beta/m*
_output_shapes
:*
dtype0

Adam/dense_15/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*'
shared_nameAdam/dense_15/kernel/m

*Adam/dense_15/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_15/kernel/m*
_output_shapes

:d*
dtype0

Adam/dense_15/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*%
shared_nameAdam/dense_15/bias/m
y
(Adam/dense_15/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_15/bias/m*
_output_shapes
:d*
dtype0

Adam/dense_16/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*'
shared_nameAdam/dense_16/kernel/m

*Adam/dense_16/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_16/kernel/m*
_output_shapes
:	d*
dtype0

Adam/dense_16/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_16/bias/m
z
(Adam/dense_16/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_16/bias/m*
_output_shapes	
:*
dtype0

#Adam/batch_normalization_11/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/batch_normalization_11/gamma/m

7Adam/batch_normalization_11/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_11/gamma/m*
_output_shapes	
:*
dtype0

"Adam/batch_normalization_11/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_11/beta/m

6Adam/batch_normalization_11/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_11/beta/m*
_output_shapes	
:*
dtype0

Adam/dense_17/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*'
shared_nameAdam/dense_17/kernel/m

*Adam/dense_17/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_17/kernel/m*
_output_shapes
:	d*
dtype0

Adam/dense_17/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*%
shared_nameAdam/dense_17/bias/m
y
(Adam/dense_17/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_17/bias/m*
_output_shapes
:d*
dtype0

#Adam/batch_normalization_12/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*4
shared_name%#Adam/batch_normalization_12/gamma/m

7Adam/batch_normalization_12/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_12/gamma/m*
_output_shapes
:d*
dtype0

"Adam/batch_normalization_12/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*3
shared_name$"Adam/batch_normalization_12/beta/m

6Adam/batch_normalization_12/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_12/beta/m*
_output_shapes
:d*
dtype0

Adam/dense_18/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d(*'
shared_nameAdam/dense_18/kernel/m

*Adam/dense_18/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_18/kernel/m*
_output_shapes

:d(*
dtype0

Adam/dense_18/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*%
shared_nameAdam/dense_18/bias/m
y
(Adam/dense_18/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_18/bias/m*
_output_shapes
:(*
dtype0

#Adam/batch_normalization_13/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*4
shared_name%#Adam/batch_normalization_13/gamma/m

7Adam/batch_normalization_13/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_13/gamma/m*
_output_shapes
:(*
dtype0

"Adam/batch_normalization_13/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/batch_normalization_13/beta/m

6Adam/batch_normalization_13/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_13/beta/m*
_output_shapes
:(*
dtype0

Adam/dense_19/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:(*'
shared_nameAdam/dense_19/kernel/m

*Adam/dense_19/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_19/kernel/m*
_output_shapes

:(*
dtype0

Adam/dense_19/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_19/bias/m
y
(Adam/dense_19/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_19/bias/m*
_output_shapes
:*
dtype0

#Adam/batch_normalization_10/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/batch_normalization_10/gamma/v

7Adam/batch_normalization_10/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_10/gamma/v*
_output_shapes
:*
dtype0

"Adam/batch_normalization_10/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_10/beta/v

6Adam/batch_normalization_10/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_10/beta/v*
_output_shapes
:*
dtype0

Adam/dense_15/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d*'
shared_nameAdam/dense_15/kernel/v

*Adam/dense_15/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_15/kernel/v*
_output_shapes

:d*
dtype0

Adam/dense_15/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*%
shared_nameAdam/dense_15/bias/v
y
(Adam/dense_15/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_15/bias/v*
_output_shapes
:d*
dtype0

Adam/dense_16/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*'
shared_nameAdam/dense_16/kernel/v

*Adam/dense_16/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_16/kernel/v*
_output_shapes
:	d*
dtype0

Adam/dense_16/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_16/bias/v
z
(Adam/dense_16/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_16/bias/v*
_output_shapes	
:*
dtype0

#Adam/batch_normalization_11/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/batch_normalization_11/gamma/v

7Adam/batch_normalization_11/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_11/gamma/v*
_output_shapes	
:*
dtype0

"Adam/batch_normalization_11/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_11/beta/v

6Adam/batch_normalization_11/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_11/beta/v*
_output_shapes	
:*
dtype0

Adam/dense_17/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	d*'
shared_nameAdam/dense_17/kernel/v

*Adam/dense_17/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_17/kernel/v*
_output_shapes
:	d*
dtype0

Adam/dense_17/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*%
shared_nameAdam/dense_17/bias/v
y
(Adam/dense_17/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_17/bias/v*
_output_shapes
:d*
dtype0

#Adam/batch_normalization_12/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*4
shared_name%#Adam/batch_normalization_12/gamma/v

7Adam/batch_normalization_12/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_12/gamma/v*
_output_shapes
:d*
dtype0

"Adam/batch_normalization_12/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*3
shared_name$"Adam/batch_normalization_12/beta/v

6Adam/batch_normalization_12/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_12/beta/v*
_output_shapes
:d*
dtype0

Adam/dense_18/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:d(*'
shared_nameAdam/dense_18/kernel/v

*Adam/dense_18/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_18/kernel/v*
_output_shapes

:d(*
dtype0

Adam/dense_18/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*%
shared_nameAdam/dense_18/bias/v
y
(Adam/dense_18/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_18/bias/v*
_output_shapes
:(*
dtype0

#Adam/batch_normalization_13/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*4
shared_name%#Adam/batch_normalization_13/gamma/v

7Adam/batch_normalization_13/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_13/gamma/v*
_output_shapes
:(*
dtype0

"Adam/batch_normalization_13/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*3
shared_name$"Adam/batch_normalization_13/beta/v

6Adam/batch_normalization_13/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_13/beta/v*
_output_shapes
:(*
dtype0

Adam/dense_19/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:(*'
shared_nameAdam/dense_19/kernel/v

*Adam/dense_19/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_19/kernel/v*
_output_shapes

:(*
dtype0

Adam/dense_19/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_19/bias/v
y
(Adam/dense_19/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_19/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
ù
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*³
value¨B¤ B
Ô
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
layer-6
layer_with_weights-5
layer-7
	layer_with_weights-6
	layer-8

layer-9
layer_with_weights-7
layer-10
layer_with_weights-8
layer-11
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
Õ
axis
	gamma
beta
moving_mean
moving_variance
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses*
¦

!kernel
"bias
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses*
¦

)kernel
*bias
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses*
¥
1	variables
2trainable_variables
3regularization_losses
4	keras_api
5_random_generator
6__call__
*7&call_and_return_all_conditional_losses* 
Õ
8axis
	9gamma
:beta
;moving_mean
<moving_variance
=	variables
>trainable_variables
?regularization_losses
@	keras_api
A__call__
*B&call_and_return_all_conditional_losses*
¦

Ckernel
Dbias
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
I__call__
*J&call_and_return_all_conditional_losses*
¥
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
O_random_generator
P__call__
*Q&call_and_return_all_conditional_losses* 
Õ
Raxis
	Sgamma
Tbeta
Umoving_mean
Vmoving_variance
W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api
[__call__
*\&call_and_return_all_conditional_losses*
¦

]kernel
^bias
_	variables
`trainable_variables
aregularization_losses
b	keras_api
c__call__
*d&call_and_return_all_conditional_losses*
¥
e	variables
ftrainable_variables
gregularization_losses
h	keras_api
i_random_generator
j__call__
*k&call_and_return_all_conditional_losses* 
Õ
laxis
	mgamma
nbeta
omoving_mean
pmoving_variance
q	variables
rtrainable_variables
sregularization_losses
t	keras_api
u__call__
*v&call_and_return_all_conditional_losses*
¦

wkernel
xbias
y	variables
ztrainable_variables
{regularization_losses
|	keras_api
}__call__
*~&call_and_return_all_conditional_losses*
°
iter
beta_1
beta_2

decay
learning_ratemÑmÒ!mÓ"mÔ)mÕ*mÖ9m×:mØCmÙDmÚSmÛTmÜ]mÝ^mÞmmßnmàwmáxmâvãvä!vå"væ)vç*vè9vé:vêCvëDvìSvíTvî]vï^vðmvñnvòwvóxvô*
Ê
0
1
2
3
!4
"5
)6
*7
98
:9
;10
<11
C12
D13
S14
T15
U16
V17
]18
^19
m20
n21
o22
p23
w24
x25*

0
1
!2
"3
)4
*5
96
:7
C8
D9
S10
T11
]12
^13
m14
n15
w16
x17*
* 
µ
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 

serving_default* 
* 
ke
VARIABLE_VALUEbatch_normalization_10/gamma5layer_with_weights-0/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_10/beta4layer_with_weights-0/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_10/moving_mean;layer_with_weights-0/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_10/moving_variance?layer_with_weights-0/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
 
0
1
2
3*

0
1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses*
* 
* 
_Y
VARIABLE_VALUEdense_15/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_15/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

!0
"1*

!0
"1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses*
* 
* 
_Y
VARIABLE_VALUEdense_16/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_16/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

)0
*1*

)0
*1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
1	variables
2trainable_variables
3regularization_losses
6__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses* 
* 
* 
* 
* 
ke
VARIABLE_VALUEbatch_normalization_11/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_11/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_11/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_11/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
 
90
:1
;2
<3*

90
:1*
* 

non_trainable_variables
layers
 metrics
 ¡layer_regularization_losses
¢layer_metrics
=	variables
>trainable_variables
?regularization_losses
A__call__
*B&call_and_return_all_conditional_losses
&B"call_and_return_conditional_losses*
* 
* 
_Y
VARIABLE_VALUEdense_17/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_17/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*

C0
D1*

C0
D1*
* 

£non_trainable_variables
¤layers
¥metrics
 ¦layer_regularization_losses
§layer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

¨non_trainable_variables
©layers
ªmetrics
 «layer_regularization_losses
¬layer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
P__call__
*Q&call_and_return_all_conditional_losses
&Q"call_and_return_conditional_losses* 
* 
* 
* 
* 
ke
VARIABLE_VALUEbatch_normalization_12/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_12/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_12/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_12/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
 
S0
T1
U2
V3*

S0
T1*
* 

­non_trainable_variables
®layers
¯metrics
 °layer_regularization_losses
±layer_metrics
W	variables
Xtrainable_variables
Yregularization_losses
[__call__
*\&call_and_return_all_conditional_losses
&\"call_and_return_conditional_losses*
* 
* 
_Y
VARIABLE_VALUEdense_18/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_18/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*

]0
^1*

]0
^1*
* 

²non_trainable_variables
³layers
´metrics
 µlayer_regularization_losses
¶layer_metrics
_	variables
`trainable_variables
aregularization_losses
c__call__
*d&call_and_return_all_conditional_losses
&d"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

·non_trainable_variables
¸layers
¹metrics
 ºlayer_regularization_losses
»layer_metrics
e	variables
ftrainable_variables
gregularization_losses
j__call__
*k&call_and_return_all_conditional_losses
&k"call_and_return_conditional_losses* 
* 
* 
* 
* 
ke
VARIABLE_VALUEbatch_normalization_13/gamma5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEbatch_normalization_13/beta4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE"batch_normalization_13/moving_mean;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE&batch_normalization_13/moving_variance?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
 
m0
n1
o2
p3*

m0
n1*
* 

¼non_trainable_variables
½layers
¾metrics
 ¿layer_regularization_losses
Àlayer_metrics
q	variables
rtrainable_variables
sregularization_losses
u__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses*
* 
* 
_Y
VARIABLE_VALUEdense_19/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_19/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE*

w0
x1*

w0
x1*
* 

Ánon_trainable_variables
Âlayers
Ãmetrics
 Älayer_regularization_losses
Ålayer_metrics
y	variables
ztrainable_variables
{regularization_losses
}__call__
*~&call_and_return_all_conditional_losses
&~"call_and_return_conditional_losses*
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
<
0
1
;2
<3
U4
V5
o6
p7*
Z
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
11*

Æ0
Ç1*
* 
* 
* 

0
1*
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

;0
<1*
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

U0
V1*
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

o0
p1*
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

Ètotal

Écount
Ê	variables
Ë	keras_api*
M

Ìtotal

Ícount
Î
_fn_kwargs
Ï	variables
Ð	keras_api*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

È0
É1*

Ê	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

Ì0
Í1*

Ï	variables*

VARIABLE_VALUE#Adam/batch_normalization_10/gamma/mQlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE"Adam/batch_normalization_10/beta/mPlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_15/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_15/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_16/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_16/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE#Adam/batch_normalization_11/gamma/mQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE"Adam/batch_normalization_11/beta/mPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_17/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_17/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE#Adam/batch_normalization_12/gamma/mQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE"Adam/batch_normalization_12/beta/mPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_18/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_18/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE#Adam/batch_normalization_13/gamma/mQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE"Adam/batch_normalization_13/beta/mPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_19/kernel/mRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_19/bias/mPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE#Adam/batch_normalization_10/gamma/vQlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE"Adam/batch_normalization_10/beta/vPlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_15/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_15/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_16/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_16/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE#Adam/batch_normalization_11/gamma/vQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE"Adam/batch_normalization_11/beta/vPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_17/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_17/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE#Adam/batch_normalization_12/gamma/vQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE"Adam/batch_normalization_12/beta/vPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_18/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_18/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE#Adam/batch_normalization_13/gamma/vQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE"Adam/batch_normalization_13/beta/vPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_19/kernel/vRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_19/bias/vPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

,serving_default_batch_normalization_10_inputPlaceholder*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
·
StatefulPartitionedCallStatefulPartitionedCall,serving_default_batch_normalization_10_input&batch_normalization_10/moving_variancebatch_normalization_10/gamma"batch_normalization_10/moving_meanbatch_normalization_10/betadense_15/kerneldense_15/biasdense_16/kerneldense_16/bias&batch_normalization_11/moving_variancebatch_normalization_11/gamma"batch_normalization_11/moving_meanbatch_normalization_11/betadense_17/kerneldense_17/bias&batch_normalization_12/moving_variancebatch_normalization_12/gamma"batch_normalization_12/moving_meanbatch_normalization_12/betadense_18/kerneldense_18/bias&batch_normalization_13/moving_variancebatch_normalization_13/gamma"batch_normalization_13/moving_meanbatch_normalization_13/betadense_19/kerneldense_19/bias*&
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*<
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *-
f(R&
$__inference_signature_wrapper_276861
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
£
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename0batch_normalization_10/gamma/Read/ReadVariableOp/batch_normalization_10/beta/Read/ReadVariableOp6batch_normalization_10/moving_mean/Read/ReadVariableOp:batch_normalization_10/moving_variance/Read/ReadVariableOp#dense_15/kernel/Read/ReadVariableOp!dense_15/bias/Read/ReadVariableOp#dense_16/kernel/Read/ReadVariableOp!dense_16/bias/Read/ReadVariableOp0batch_normalization_11/gamma/Read/ReadVariableOp/batch_normalization_11/beta/Read/ReadVariableOp6batch_normalization_11/moving_mean/Read/ReadVariableOp:batch_normalization_11/moving_variance/Read/ReadVariableOp#dense_17/kernel/Read/ReadVariableOp!dense_17/bias/Read/ReadVariableOp0batch_normalization_12/gamma/Read/ReadVariableOp/batch_normalization_12/beta/Read/ReadVariableOp6batch_normalization_12/moving_mean/Read/ReadVariableOp:batch_normalization_12/moving_variance/Read/ReadVariableOp#dense_18/kernel/Read/ReadVariableOp!dense_18/bias/Read/ReadVariableOp0batch_normalization_13/gamma/Read/ReadVariableOp/batch_normalization_13/beta/Read/ReadVariableOp6batch_normalization_13/moving_mean/Read/ReadVariableOp:batch_normalization_13/moving_variance/Read/ReadVariableOp#dense_19/kernel/Read/ReadVariableOp!dense_19/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp7Adam/batch_normalization_10/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_10/beta/m/Read/ReadVariableOp*Adam/dense_15/kernel/m/Read/ReadVariableOp(Adam/dense_15/bias/m/Read/ReadVariableOp*Adam/dense_16/kernel/m/Read/ReadVariableOp(Adam/dense_16/bias/m/Read/ReadVariableOp7Adam/batch_normalization_11/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_11/beta/m/Read/ReadVariableOp*Adam/dense_17/kernel/m/Read/ReadVariableOp(Adam/dense_17/bias/m/Read/ReadVariableOp7Adam/batch_normalization_12/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_12/beta/m/Read/ReadVariableOp*Adam/dense_18/kernel/m/Read/ReadVariableOp(Adam/dense_18/bias/m/Read/ReadVariableOp7Adam/batch_normalization_13/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_13/beta/m/Read/ReadVariableOp*Adam/dense_19/kernel/m/Read/ReadVariableOp(Adam/dense_19/bias/m/Read/ReadVariableOp7Adam/batch_normalization_10/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_10/beta/v/Read/ReadVariableOp*Adam/dense_15/kernel/v/Read/ReadVariableOp(Adam/dense_15/bias/v/Read/ReadVariableOp*Adam/dense_16/kernel/v/Read/ReadVariableOp(Adam/dense_16/bias/v/Read/ReadVariableOp7Adam/batch_normalization_11/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_11/beta/v/Read/ReadVariableOp*Adam/dense_17/kernel/v/Read/ReadVariableOp(Adam/dense_17/bias/v/Read/ReadVariableOp7Adam/batch_normalization_12/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_12/beta/v/Read/ReadVariableOp*Adam/dense_18/kernel/v/Read/ReadVariableOp(Adam/dense_18/bias/v/Read/ReadVariableOp7Adam/batch_normalization_13/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_13/beta/v/Read/ReadVariableOp*Adam/dense_19/kernel/v/Read/ReadVariableOp(Adam/dense_19/bias/v/Read/ReadVariableOpConst*T
TinM
K2I	*
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
GPU 2J 8 *(
f#R!
__inference__traced_save_277598

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamebatch_normalization_10/gammabatch_normalization_10/beta"batch_normalization_10/moving_mean&batch_normalization_10/moving_variancedense_15/kerneldense_15/biasdense_16/kerneldense_16/biasbatch_normalization_11/gammabatch_normalization_11/beta"batch_normalization_11/moving_mean&batch_normalization_11/moving_variancedense_17/kerneldense_17/biasbatch_normalization_12/gammabatch_normalization_12/beta"batch_normalization_12/moving_mean&batch_normalization_12/moving_variancedense_18/kerneldense_18/biasbatch_normalization_13/gammabatch_normalization_13/beta"batch_normalization_13/moving_mean&batch_normalization_13/moving_variancedense_19/kerneldense_19/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1#Adam/batch_normalization_10/gamma/m"Adam/batch_normalization_10/beta/mAdam/dense_15/kernel/mAdam/dense_15/bias/mAdam/dense_16/kernel/mAdam/dense_16/bias/m#Adam/batch_normalization_11/gamma/m"Adam/batch_normalization_11/beta/mAdam/dense_17/kernel/mAdam/dense_17/bias/m#Adam/batch_normalization_12/gamma/m"Adam/batch_normalization_12/beta/mAdam/dense_18/kernel/mAdam/dense_18/bias/m#Adam/batch_normalization_13/gamma/m"Adam/batch_normalization_13/beta/mAdam/dense_19/kernel/mAdam/dense_19/bias/m#Adam/batch_normalization_10/gamma/v"Adam/batch_normalization_10/beta/vAdam/dense_15/kernel/vAdam/dense_15/bias/vAdam/dense_16/kernel/vAdam/dense_16/bias/v#Adam/batch_normalization_11/gamma/v"Adam/batch_normalization_11/beta/vAdam/dense_17/kernel/vAdam/dense_17/bias/v#Adam/batch_normalization_12/gamma/v"Adam/batch_normalization_12/beta/vAdam/dense_18/kernel/vAdam/dense_18/bias/v#Adam/batch_normalization_13/gamma/v"Adam/batch_normalization_13/beta/vAdam/dense_19/kernel/vAdam/dense_19/bias/v*S
TinL
J2H*
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
GPU 2J 8 *+
f&R$
"__inference__traced_restore_277821±ì
Ñ
¥
$__inference_signature_wrapper_276861 
batch_normalization_10_input
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:d
	unknown_4:d
	unknown_5:	d
	unknown_6:	
	unknown_7:	
	unknown_8:	
	unknown_9:	

unknown_10:	

unknown_11:	d

unknown_12:d

unknown_13:d

unknown_14:d

unknown_15:d

unknown_16:d

unknown_17:d(

unknown_18:(

unknown_19:(

unknown_20:(

unknown_21:(

unknown_22:(

unknown_23:(

unknown_24:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallbatch_normalization_10_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_24*&
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*<
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__wrapped_model_275366o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
6
_user_specified_namebatch_normalization_10_input
Ï
±
R__inference_batch_normalization_10_layer_call_and_return_conditional_losses_276907

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿº
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
%
ë
R__inference_batch_normalization_12_layer_call_and_return_conditional_losses_277215

inputs5
'assignmovingavg_readvariableop_resource:d7
)assignmovingavg_1_readvariableop_resource:d3
%batchnorm_mul_readvariableop_resource:d/
!batchnorm_readvariableop_resource:d
identity¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:d*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:d
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdl
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:d*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:d*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:d*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:d*
dtype0
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:dx
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:d¬
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:d*
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:d~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:d´
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:dP
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:d~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:d*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:dc
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdh
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:dv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:d*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:dr
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdb
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdê
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿd: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
Ï
±
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_275636

inputs/
!batchnorm_readvariableop_resource:(3
%batchnorm_mul_readvariableop_resource:(1
#batchnorm_readvariableop_1_resource:(1
#batchnorm_readvariableop_2_resource:(
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:(*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:(P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:(~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:(*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:(c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:(*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:(z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:(*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:(r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(º
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ(: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
 
_user_specified_nameinputs
%
ë
R__inference_batch_normalization_10_layer_call_and_return_conditional_losses_276941

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:¬
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:´
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿê
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
²
Ö
7__inference_batch_normalization_11_layer_call_fn_277021

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_11_layer_call_and_return_conditional_losses_275472p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
°%
ï
R__inference_batch_normalization_11_layer_call_and_return_conditional_losses_277088

inputs6
'assignmovingavg_readvariableop_resource:	8
)assignmovingavg_1_readvariableop_resource:	4
%batchnorm_mul_readvariableop_resource:	0
!batchnorm_readvariableop_resource:	
identity¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(e
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:*
dtype0
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:y
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:¬
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:*
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:´
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:r
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:w
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0q
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿê
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ï
±
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_277308

inputs/
!batchnorm_readvariableop_resource:(3
%batchnorm_mul_readvariableop_resource:(1
#batchnorm_readvariableop_1_resource:(1
#batchnorm_readvariableop_2_resource:(
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:(*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:(P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:(~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:(*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:(c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:(*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:(z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:(*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:(r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(º
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ(: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
 
_user_specified_nameinputs
Å

)__inference_dense_17_layer_call_fn_277097

inputs
unknown:	d
	unknown_0:d
identity¢StatefulPartitionedCallÙ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_17_layer_call_and_return_conditional_losses_275771o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Â

)__inference_dense_18_layer_call_fn_277224

inputs
unknown:d(
	unknown_0:(
identity¢StatefulPartitionedCallÙ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_18_layer_call_and_return_conditional_losses_275804o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿd: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
 

õ
D__inference_dense_19_layer_call_and_return_conditional_losses_277362

inputs0
matmul_readvariableop_resource:(-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ(: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
 
_user_specified_nameinputs
%
ë
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_275683

inputs5
'assignmovingavg_readvariableop_resource:(7
)assignmovingavg_1_readvariableop_resource:(3
%batchnorm_mul_readvariableop_resource:(/
!batchnorm_readvariableop_resource:(
identity¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:(*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:(
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:(*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:(*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:(*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:(*
dtype0
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:(x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:(¬
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:(*
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:(~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:(´
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:(P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:(~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:(*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:(c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:(v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:(*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:(r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(ê
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ(: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
 
_user_specified_nameinputs
á
µ
R__inference_batch_normalization_11_layer_call_and_return_conditional_losses_275472

inputs0
!batchnorm_readvariableop_resource:	4
%batchnorm_mul_readvariableop_resource:	2
#batchnorm_readvariableop_1_resource:	2
#batchnorm_readvariableop_2_resource:	
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿº
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ù
®
-__inference_sequential_3_layer_call_fn_276257 
batch_normalization_10_input
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:d
	unknown_4:d
	unknown_5:	d
	unknown_6:	
	unknown_7:	
	unknown_8:	
	unknown_9:	

unknown_10:	

unknown_11:	d

unknown_12:d

unknown_13:d

unknown_14:d

unknown_15:d

unknown_16:d

unknown_17:d(

unknown_18:(

unknown_19:(

unknown_20:(

unknown_21:(

unknown_22:(

unknown_23:(

unknown_24:
identity¢StatefulPartitionedCall²
StatefulPartitionedCallStatefulPartitionedCallbatch_normalization_10_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_24*&
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*4
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_3_layer_call_and_return_conditional_losses_276145o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
6
_user_specified_namebatch_normalization_10_input


ö
D__inference_dense_17_layer_call_and_return_conditional_losses_277108

inputs1
matmul_readvariableop_resource:	d-
biasadd_readvariableop_resource:d
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	d*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿda
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
%
ë
R__inference_batch_normalization_12_layer_call_and_return_conditional_losses_275601

inputs5
'assignmovingavg_readvariableop_resource:d7
)assignmovingavg_1_readvariableop_resource:d3
%batchnorm_mul_readvariableop_resource:d/
!batchnorm_readvariableop_resource:d
identity¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:d*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:d
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdl
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:d*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:d*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:d*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:d*
dtype0
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:dx
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:d¬
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:d*
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:d~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:d´
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:dP
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:d~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:d*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:dc
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdh
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:dv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:d*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:dr
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdb
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdê
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿd: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
Ø
c
E__inference_dropout_9_layer_call_and_return_conditional_losses_277123

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿd:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
Â

)__inference_dense_15_layer_call_fn_276950

inputs
unknown:d
	unknown_0:d
identity¢StatefulPartitionedCallÙ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_15_layer_call_and_return_conditional_losses_275721o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ª
Ò
7__inference_batch_normalization_10_layer_call_fn_276874

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_10_layer_call_and_return_conditional_losses_275390o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Æ

)__inference_dense_16_layer_call_fn_276970

inputs
unknown:	d
	unknown_0:	
identity¢StatefulPartitionedCallÚ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_16_layer_call_and_return_conditional_losses_275738p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿd: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
Ü
c
E__inference_dropout_8_layer_call_and_return_conditional_losses_276996

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ó	
d
E__inference_dropout_9_layer_call_and_return_conditional_losses_275962

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>¦
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdo
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdi
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdY
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿd:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
þ²
ï
!__inference__wrapped_model_275366 
batch_normalization_10_inputS
Esequential_3_batch_normalization_10_batchnorm_readvariableop_resource:W
Isequential_3_batch_normalization_10_batchnorm_mul_readvariableop_resource:U
Gsequential_3_batch_normalization_10_batchnorm_readvariableop_1_resource:U
Gsequential_3_batch_normalization_10_batchnorm_readvariableop_2_resource:F
4sequential_3_dense_15_matmul_readvariableop_resource:dC
5sequential_3_dense_15_biasadd_readvariableop_resource:dG
4sequential_3_dense_16_matmul_readvariableop_resource:	dD
5sequential_3_dense_16_biasadd_readvariableop_resource:	T
Esequential_3_batch_normalization_11_batchnorm_readvariableop_resource:	X
Isequential_3_batch_normalization_11_batchnorm_mul_readvariableop_resource:	V
Gsequential_3_batch_normalization_11_batchnorm_readvariableop_1_resource:	V
Gsequential_3_batch_normalization_11_batchnorm_readvariableop_2_resource:	G
4sequential_3_dense_17_matmul_readvariableop_resource:	dC
5sequential_3_dense_17_biasadd_readvariableop_resource:dS
Esequential_3_batch_normalization_12_batchnorm_readvariableop_resource:dW
Isequential_3_batch_normalization_12_batchnorm_mul_readvariableop_resource:dU
Gsequential_3_batch_normalization_12_batchnorm_readvariableop_1_resource:dU
Gsequential_3_batch_normalization_12_batchnorm_readvariableop_2_resource:dF
4sequential_3_dense_18_matmul_readvariableop_resource:d(C
5sequential_3_dense_18_biasadd_readvariableop_resource:(S
Esequential_3_batch_normalization_13_batchnorm_readvariableop_resource:(W
Isequential_3_batch_normalization_13_batchnorm_mul_readvariableop_resource:(U
Gsequential_3_batch_normalization_13_batchnorm_readvariableop_1_resource:(U
Gsequential_3_batch_normalization_13_batchnorm_readvariableop_2_resource:(F
4sequential_3_dense_19_matmul_readvariableop_resource:(C
5sequential_3_dense_19_biasadd_readvariableop_resource:
identity¢<sequential_3/batch_normalization_10/batchnorm/ReadVariableOp¢>sequential_3/batch_normalization_10/batchnorm/ReadVariableOp_1¢>sequential_3/batch_normalization_10/batchnorm/ReadVariableOp_2¢@sequential_3/batch_normalization_10/batchnorm/mul/ReadVariableOp¢<sequential_3/batch_normalization_11/batchnorm/ReadVariableOp¢>sequential_3/batch_normalization_11/batchnorm/ReadVariableOp_1¢>sequential_3/batch_normalization_11/batchnorm/ReadVariableOp_2¢@sequential_3/batch_normalization_11/batchnorm/mul/ReadVariableOp¢<sequential_3/batch_normalization_12/batchnorm/ReadVariableOp¢>sequential_3/batch_normalization_12/batchnorm/ReadVariableOp_1¢>sequential_3/batch_normalization_12/batchnorm/ReadVariableOp_2¢@sequential_3/batch_normalization_12/batchnorm/mul/ReadVariableOp¢<sequential_3/batch_normalization_13/batchnorm/ReadVariableOp¢>sequential_3/batch_normalization_13/batchnorm/ReadVariableOp_1¢>sequential_3/batch_normalization_13/batchnorm/ReadVariableOp_2¢@sequential_3/batch_normalization_13/batchnorm/mul/ReadVariableOp¢,sequential_3/dense_15/BiasAdd/ReadVariableOp¢+sequential_3/dense_15/MatMul/ReadVariableOp¢,sequential_3/dense_16/BiasAdd/ReadVariableOp¢+sequential_3/dense_16/MatMul/ReadVariableOp¢,sequential_3/dense_17/BiasAdd/ReadVariableOp¢+sequential_3/dense_17/MatMul/ReadVariableOp¢,sequential_3/dense_18/BiasAdd/ReadVariableOp¢+sequential_3/dense_18/MatMul/ReadVariableOp¢,sequential_3/dense_19/BiasAdd/ReadVariableOp¢+sequential_3/dense_19/MatMul/ReadVariableOp¾
<sequential_3/batch_normalization_10/batchnorm/ReadVariableOpReadVariableOpEsequential_3_batch_normalization_10_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0x
3sequential_3/batch_normalization_10/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:ã
1sequential_3/batch_normalization_10/batchnorm/addAddV2Dsequential_3/batch_normalization_10/batchnorm/ReadVariableOp:value:0<sequential_3/batch_normalization_10/batchnorm/add/y:output:0*
T0*
_output_shapes
:
3sequential_3/batch_normalization_10/batchnorm/RsqrtRsqrt5sequential_3/batch_normalization_10/batchnorm/add:z:0*
T0*
_output_shapes
:Æ
@sequential_3/batch_normalization_10/batchnorm/mul/ReadVariableOpReadVariableOpIsequential_3_batch_normalization_10_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0à
1sequential_3/batch_normalization_10/batchnorm/mulMul7sequential_3/batch_normalization_10/batchnorm/Rsqrt:y:0Hsequential_3/batch_normalization_10/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:Á
3sequential_3/batch_normalization_10/batchnorm/mul_1Mulbatch_normalization_10_input5sequential_3/batch_normalization_10/batchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÂ
>sequential_3/batch_normalization_10/batchnorm/ReadVariableOp_1ReadVariableOpGsequential_3_batch_normalization_10_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0Þ
3sequential_3/batch_normalization_10/batchnorm/mul_2MulFsequential_3/batch_normalization_10/batchnorm/ReadVariableOp_1:value:05sequential_3/batch_normalization_10/batchnorm/mul:z:0*
T0*
_output_shapes
:Â
>sequential_3/batch_normalization_10/batchnorm/ReadVariableOp_2ReadVariableOpGsequential_3_batch_normalization_10_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0Þ
1sequential_3/batch_normalization_10/batchnorm/subSubFsequential_3/batch_normalization_10/batchnorm/ReadVariableOp_2:value:07sequential_3/batch_normalization_10/batchnorm/mul_2:z:0*
T0*
_output_shapes
:Þ
3sequential_3/batch_normalization_10/batchnorm/add_1AddV27sequential_3/batch_normalization_10/batchnorm/mul_1:z:05sequential_3/batch_normalization_10/batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
+sequential_3/dense_15/MatMul/ReadVariableOpReadVariableOp4sequential_3_dense_15_matmul_readvariableop_resource*
_output_shapes

:d*
dtype0Æ
sequential_3/dense_15/MatMulMatMul7sequential_3/batch_normalization_10/batchnorm/add_1:z:03sequential_3/dense_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
,sequential_3/dense_15/BiasAdd/ReadVariableOpReadVariableOp5sequential_3_dense_15_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0¸
sequential_3/dense_15/BiasAddBiasAdd&sequential_3/dense_15/MatMul:product:04sequential_3/dense_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd|
sequential_3/dense_15/ReluRelu&sequential_3/dense_15/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¡
+sequential_3/dense_16/MatMul/ReadVariableOpReadVariableOp4sequential_3_dense_16_matmul_readvariableop_resource*
_output_shapes
:	d*
dtype0¸
sequential_3/dense_16/MatMulMatMul(sequential_3/dense_15/Relu:activations:03sequential_3/dense_16/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,sequential_3/dense_16/BiasAdd/ReadVariableOpReadVariableOp5sequential_3_dense_16_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0¹
sequential_3/dense_16/BiasAddBiasAdd&sequential_3/dense_16/MatMul:product:04sequential_3/dense_16/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
sequential_3/dense_16/ReluRelu&sequential_3/dense_16/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
sequential_3/dropout_8/IdentityIdentity(sequential_3/dense_16/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¿
<sequential_3/batch_normalization_11/batchnorm/ReadVariableOpReadVariableOpEsequential_3_batch_normalization_11_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0x
3sequential_3/batch_normalization_11/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:ä
1sequential_3/batch_normalization_11/batchnorm/addAddV2Dsequential_3/batch_normalization_11/batchnorm/ReadVariableOp:value:0<sequential_3/batch_normalization_11/batchnorm/add/y:output:0*
T0*
_output_shapes	
:
3sequential_3/batch_normalization_11/batchnorm/RsqrtRsqrt5sequential_3/batch_normalization_11/batchnorm/add:z:0*
T0*
_output_shapes	
:Ç
@sequential_3/batch_normalization_11/batchnorm/mul/ReadVariableOpReadVariableOpIsequential_3_batch_normalization_11_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0á
1sequential_3/batch_normalization_11/batchnorm/mulMul7sequential_3/batch_normalization_11/batchnorm/Rsqrt:y:0Hsequential_3/batch_normalization_11/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:Î
3sequential_3/batch_normalization_11/batchnorm/mul_1Mul(sequential_3/dropout_8/Identity:output:05sequential_3/batch_normalization_11/batchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÃ
>sequential_3/batch_normalization_11/batchnorm/ReadVariableOp_1ReadVariableOpGsequential_3_batch_normalization_11_batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype0ß
3sequential_3/batch_normalization_11/batchnorm/mul_2MulFsequential_3/batch_normalization_11/batchnorm/ReadVariableOp_1:value:05sequential_3/batch_normalization_11/batchnorm/mul:z:0*
T0*
_output_shapes	
:Ã
>sequential_3/batch_normalization_11/batchnorm/ReadVariableOp_2ReadVariableOpGsequential_3_batch_normalization_11_batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype0ß
1sequential_3/batch_normalization_11/batchnorm/subSubFsequential_3/batch_normalization_11/batchnorm/ReadVariableOp_2:value:07sequential_3/batch_normalization_11/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:ß
3sequential_3/batch_normalization_11/batchnorm/add_1AddV27sequential_3/batch_normalization_11/batchnorm/mul_1:z:05sequential_3/batch_normalization_11/batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¡
+sequential_3/dense_17/MatMul/ReadVariableOpReadVariableOp4sequential_3_dense_17_matmul_readvariableop_resource*
_output_shapes
:	d*
dtype0Æ
sequential_3/dense_17/MatMulMatMul7sequential_3/batch_normalization_11/batchnorm/add_1:z:03sequential_3/dense_17/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
,sequential_3/dense_17/BiasAdd/ReadVariableOpReadVariableOp5sequential_3_dense_17_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0¸
sequential_3/dense_17/BiasAddBiasAdd&sequential_3/dense_17/MatMul:product:04sequential_3/dense_17/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd|
sequential_3/dense_17/ReluRelu&sequential_3/dense_17/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
sequential_3/dropout_9/IdentityIdentity(sequential_3/dense_17/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¾
<sequential_3/batch_normalization_12/batchnorm/ReadVariableOpReadVariableOpEsequential_3_batch_normalization_12_batchnorm_readvariableop_resource*
_output_shapes
:d*
dtype0x
3sequential_3/batch_normalization_12/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:ã
1sequential_3/batch_normalization_12/batchnorm/addAddV2Dsequential_3/batch_normalization_12/batchnorm/ReadVariableOp:value:0<sequential_3/batch_normalization_12/batchnorm/add/y:output:0*
T0*
_output_shapes
:d
3sequential_3/batch_normalization_12/batchnorm/RsqrtRsqrt5sequential_3/batch_normalization_12/batchnorm/add:z:0*
T0*
_output_shapes
:dÆ
@sequential_3/batch_normalization_12/batchnorm/mul/ReadVariableOpReadVariableOpIsequential_3_batch_normalization_12_batchnorm_mul_readvariableop_resource*
_output_shapes
:d*
dtype0à
1sequential_3/batch_normalization_12/batchnorm/mulMul7sequential_3/batch_normalization_12/batchnorm/Rsqrt:y:0Hsequential_3/batch_normalization_12/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:dÍ
3sequential_3/batch_normalization_12/batchnorm/mul_1Mul(sequential_3/dropout_9/Identity:output:05sequential_3/batch_normalization_12/batchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdÂ
>sequential_3/batch_normalization_12/batchnorm/ReadVariableOp_1ReadVariableOpGsequential_3_batch_normalization_12_batchnorm_readvariableop_1_resource*
_output_shapes
:d*
dtype0Þ
3sequential_3/batch_normalization_12/batchnorm/mul_2MulFsequential_3/batch_normalization_12/batchnorm/ReadVariableOp_1:value:05sequential_3/batch_normalization_12/batchnorm/mul:z:0*
T0*
_output_shapes
:dÂ
>sequential_3/batch_normalization_12/batchnorm/ReadVariableOp_2ReadVariableOpGsequential_3_batch_normalization_12_batchnorm_readvariableop_2_resource*
_output_shapes
:d*
dtype0Þ
1sequential_3/batch_normalization_12/batchnorm/subSubFsequential_3/batch_normalization_12/batchnorm/ReadVariableOp_2:value:07sequential_3/batch_normalization_12/batchnorm/mul_2:z:0*
T0*
_output_shapes
:dÞ
3sequential_3/batch_normalization_12/batchnorm/add_1AddV27sequential_3/batch_normalization_12/batchnorm/mul_1:z:05sequential_3/batch_normalization_12/batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd 
+sequential_3/dense_18/MatMul/ReadVariableOpReadVariableOp4sequential_3_dense_18_matmul_readvariableop_resource*
_output_shapes

:d(*
dtype0Æ
sequential_3/dense_18/MatMulMatMul7sequential_3/batch_normalization_12/batchnorm/add_1:z:03sequential_3/dense_18/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
,sequential_3/dense_18/BiasAdd/ReadVariableOpReadVariableOp5sequential_3_dense_18_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0¸
sequential_3/dense_18/BiasAddBiasAdd&sequential_3/dense_18/MatMul:product:04sequential_3/dense_18/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(|
sequential_3/dense_18/ReluRelu&sequential_3/dense_18/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
 sequential_3/dropout_10/IdentityIdentity(sequential_3/dense_18/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(¾
<sequential_3/batch_normalization_13/batchnorm/ReadVariableOpReadVariableOpEsequential_3_batch_normalization_13_batchnorm_readvariableop_resource*
_output_shapes
:(*
dtype0x
3sequential_3/batch_normalization_13/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:ã
1sequential_3/batch_normalization_13/batchnorm/addAddV2Dsequential_3/batch_normalization_13/batchnorm/ReadVariableOp:value:0<sequential_3/batch_normalization_13/batchnorm/add/y:output:0*
T0*
_output_shapes
:(
3sequential_3/batch_normalization_13/batchnorm/RsqrtRsqrt5sequential_3/batch_normalization_13/batchnorm/add:z:0*
T0*
_output_shapes
:(Æ
@sequential_3/batch_normalization_13/batchnorm/mul/ReadVariableOpReadVariableOpIsequential_3_batch_normalization_13_batchnorm_mul_readvariableop_resource*
_output_shapes
:(*
dtype0à
1sequential_3/batch_normalization_13/batchnorm/mulMul7sequential_3/batch_normalization_13/batchnorm/Rsqrt:y:0Hsequential_3/batch_normalization_13/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:(Î
3sequential_3/batch_normalization_13/batchnorm/mul_1Mul)sequential_3/dropout_10/Identity:output:05sequential_3/batch_normalization_13/batchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(Â
>sequential_3/batch_normalization_13/batchnorm/ReadVariableOp_1ReadVariableOpGsequential_3_batch_normalization_13_batchnorm_readvariableop_1_resource*
_output_shapes
:(*
dtype0Þ
3sequential_3/batch_normalization_13/batchnorm/mul_2MulFsequential_3/batch_normalization_13/batchnorm/ReadVariableOp_1:value:05sequential_3/batch_normalization_13/batchnorm/mul:z:0*
T0*
_output_shapes
:(Â
>sequential_3/batch_normalization_13/batchnorm/ReadVariableOp_2ReadVariableOpGsequential_3_batch_normalization_13_batchnorm_readvariableop_2_resource*
_output_shapes
:(*
dtype0Þ
1sequential_3/batch_normalization_13/batchnorm/subSubFsequential_3/batch_normalization_13/batchnorm/ReadVariableOp_2:value:07sequential_3/batch_normalization_13/batchnorm/mul_2:z:0*
T0*
_output_shapes
:(Þ
3sequential_3/batch_normalization_13/batchnorm/add_1AddV27sequential_3/batch_normalization_13/batchnorm/mul_1:z:05sequential_3/batch_normalization_13/batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ( 
+sequential_3/dense_19/MatMul/ReadVariableOpReadVariableOp4sequential_3_dense_19_matmul_readvariableop_resource*
_output_shapes

:(*
dtype0Æ
sequential_3/dense_19/MatMulMatMul7sequential_3/batch_normalization_13/batchnorm/add_1:z:03sequential_3/dense_19/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,sequential_3/dense_19/BiasAdd/ReadVariableOpReadVariableOp5sequential_3_dense_19_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¸
sequential_3/dense_19/BiasAddBiasAdd&sequential_3/dense_19/MatMul:product:04sequential_3/dense_19/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
sequential_3/dense_19/SoftmaxSoftmax&sequential_3/dense_19/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
IdentityIdentity'sequential_3/dense_19/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ§
NoOpNoOp=^sequential_3/batch_normalization_10/batchnorm/ReadVariableOp?^sequential_3/batch_normalization_10/batchnorm/ReadVariableOp_1?^sequential_3/batch_normalization_10/batchnorm/ReadVariableOp_2A^sequential_3/batch_normalization_10/batchnorm/mul/ReadVariableOp=^sequential_3/batch_normalization_11/batchnorm/ReadVariableOp?^sequential_3/batch_normalization_11/batchnorm/ReadVariableOp_1?^sequential_3/batch_normalization_11/batchnorm/ReadVariableOp_2A^sequential_3/batch_normalization_11/batchnorm/mul/ReadVariableOp=^sequential_3/batch_normalization_12/batchnorm/ReadVariableOp?^sequential_3/batch_normalization_12/batchnorm/ReadVariableOp_1?^sequential_3/batch_normalization_12/batchnorm/ReadVariableOp_2A^sequential_3/batch_normalization_12/batchnorm/mul/ReadVariableOp=^sequential_3/batch_normalization_13/batchnorm/ReadVariableOp?^sequential_3/batch_normalization_13/batchnorm/ReadVariableOp_1?^sequential_3/batch_normalization_13/batchnorm/ReadVariableOp_2A^sequential_3/batch_normalization_13/batchnorm/mul/ReadVariableOp-^sequential_3/dense_15/BiasAdd/ReadVariableOp,^sequential_3/dense_15/MatMul/ReadVariableOp-^sequential_3/dense_16/BiasAdd/ReadVariableOp,^sequential_3/dense_16/MatMul/ReadVariableOp-^sequential_3/dense_17/BiasAdd/ReadVariableOp,^sequential_3/dense_17/MatMul/ReadVariableOp-^sequential_3/dense_18/BiasAdd/ReadVariableOp,^sequential_3/dense_18/MatMul/ReadVariableOp-^sequential_3/dense_19/BiasAdd/ReadVariableOp,^sequential_3/dense_19/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : 2|
<sequential_3/batch_normalization_10/batchnorm/ReadVariableOp<sequential_3/batch_normalization_10/batchnorm/ReadVariableOp2
>sequential_3/batch_normalization_10/batchnorm/ReadVariableOp_1>sequential_3/batch_normalization_10/batchnorm/ReadVariableOp_12
>sequential_3/batch_normalization_10/batchnorm/ReadVariableOp_2>sequential_3/batch_normalization_10/batchnorm/ReadVariableOp_22
@sequential_3/batch_normalization_10/batchnorm/mul/ReadVariableOp@sequential_3/batch_normalization_10/batchnorm/mul/ReadVariableOp2|
<sequential_3/batch_normalization_11/batchnorm/ReadVariableOp<sequential_3/batch_normalization_11/batchnorm/ReadVariableOp2
>sequential_3/batch_normalization_11/batchnorm/ReadVariableOp_1>sequential_3/batch_normalization_11/batchnorm/ReadVariableOp_12
>sequential_3/batch_normalization_11/batchnorm/ReadVariableOp_2>sequential_3/batch_normalization_11/batchnorm/ReadVariableOp_22
@sequential_3/batch_normalization_11/batchnorm/mul/ReadVariableOp@sequential_3/batch_normalization_11/batchnorm/mul/ReadVariableOp2|
<sequential_3/batch_normalization_12/batchnorm/ReadVariableOp<sequential_3/batch_normalization_12/batchnorm/ReadVariableOp2
>sequential_3/batch_normalization_12/batchnorm/ReadVariableOp_1>sequential_3/batch_normalization_12/batchnorm/ReadVariableOp_12
>sequential_3/batch_normalization_12/batchnorm/ReadVariableOp_2>sequential_3/batch_normalization_12/batchnorm/ReadVariableOp_22
@sequential_3/batch_normalization_12/batchnorm/mul/ReadVariableOp@sequential_3/batch_normalization_12/batchnorm/mul/ReadVariableOp2|
<sequential_3/batch_normalization_13/batchnorm/ReadVariableOp<sequential_3/batch_normalization_13/batchnorm/ReadVariableOp2
>sequential_3/batch_normalization_13/batchnorm/ReadVariableOp_1>sequential_3/batch_normalization_13/batchnorm/ReadVariableOp_12
>sequential_3/batch_normalization_13/batchnorm/ReadVariableOp_2>sequential_3/batch_normalization_13/batchnorm/ReadVariableOp_22
@sequential_3/batch_normalization_13/batchnorm/mul/ReadVariableOp@sequential_3/batch_normalization_13/batchnorm/mul/ReadVariableOp2\
,sequential_3/dense_15/BiasAdd/ReadVariableOp,sequential_3/dense_15/BiasAdd/ReadVariableOp2Z
+sequential_3/dense_15/MatMul/ReadVariableOp+sequential_3/dense_15/MatMul/ReadVariableOp2\
,sequential_3/dense_16/BiasAdd/ReadVariableOp,sequential_3/dense_16/BiasAdd/ReadVariableOp2Z
+sequential_3/dense_16/MatMul/ReadVariableOp+sequential_3/dense_16/MatMul/ReadVariableOp2\
,sequential_3/dense_17/BiasAdd/ReadVariableOp,sequential_3/dense_17/BiasAdd/ReadVariableOp2Z
+sequential_3/dense_17/MatMul/ReadVariableOp+sequential_3/dense_17/MatMul/ReadVariableOp2\
,sequential_3/dense_18/BiasAdd/ReadVariableOp,sequential_3/dense_18/BiasAdd/ReadVariableOp2Z
+sequential_3/dense_18/MatMul/ReadVariableOp+sequential_3/dense_18/MatMul/ReadVariableOp2\
,sequential_3/dense_19/BiasAdd/ReadVariableOp,sequential_3/dense_19/BiasAdd/ReadVariableOp2Z
+sequential_3/dense_19/MatMul/ReadVariableOp+sequential_3/dense_19/MatMul/ReadVariableOp:e a
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
6
_user_specified_namebatch_normalization_10_input
£

÷
D__inference_dense_16_layer_call_and_return_conditional_losses_275738

inputs1
matmul_readvariableop_resource:	d.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	d*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿd: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
£
F
*__inference_dropout_8_layer_call_fn_276986

inputs
identity±
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_8_layer_call_and_return_conditional_losses_275749a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
£

÷
D__inference_dense_16_layer_call_and_return_conditional_losses_276981

inputs1
matmul_readvariableop_resource:	d.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	d*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿd: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs

º 
__inference__traced_save_277598
file_prefix;
7savev2_batch_normalization_10_gamma_read_readvariableop:
6savev2_batch_normalization_10_beta_read_readvariableopA
=savev2_batch_normalization_10_moving_mean_read_readvariableopE
Asavev2_batch_normalization_10_moving_variance_read_readvariableop.
*savev2_dense_15_kernel_read_readvariableop,
(savev2_dense_15_bias_read_readvariableop.
*savev2_dense_16_kernel_read_readvariableop,
(savev2_dense_16_bias_read_readvariableop;
7savev2_batch_normalization_11_gamma_read_readvariableop:
6savev2_batch_normalization_11_beta_read_readvariableopA
=savev2_batch_normalization_11_moving_mean_read_readvariableopE
Asavev2_batch_normalization_11_moving_variance_read_readvariableop.
*savev2_dense_17_kernel_read_readvariableop,
(savev2_dense_17_bias_read_readvariableop;
7savev2_batch_normalization_12_gamma_read_readvariableop:
6savev2_batch_normalization_12_beta_read_readvariableopA
=savev2_batch_normalization_12_moving_mean_read_readvariableopE
Asavev2_batch_normalization_12_moving_variance_read_readvariableop.
*savev2_dense_18_kernel_read_readvariableop,
(savev2_dense_18_bias_read_readvariableop;
7savev2_batch_normalization_13_gamma_read_readvariableop:
6savev2_batch_normalization_13_beta_read_readvariableopA
=savev2_batch_normalization_13_moving_mean_read_readvariableopE
Asavev2_batch_normalization_13_moving_variance_read_readvariableop.
*savev2_dense_19_kernel_read_readvariableop,
(savev2_dense_19_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableopB
>savev2_adam_batch_normalization_10_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_10_beta_m_read_readvariableop5
1savev2_adam_dense_15_kernel_m_read_readvariableop3
/savev2_adam_dense_15_bias_m_read_readvariableop5
1savev2_adam_dense_16_kernel_m_read_readvariableop3
/savev2_adam_dense_16_bias_m_read_readvariableopB
>savev2_adam_batch_normalization_11_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_11_beta_m_read_readvariableop5
1savev2_adam_dense_17_kernel_m_read_readvariableop3
/savev2_adam_dense_17_bias_m_read_readvariableopB
>savev2_adam_batch_normalization_12_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_12_beta_m_read_readvariableop5
1savev2_adam_dense_18_kernel_m_read_readvariableop3
/savev2_adam_dense_18_bias_m_read_readvariableopB
>savev2_adam_batch_normalization_13_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_13_beta_m_read_readvariableop5
1savev2_adam_dense_19_kernel_m_read_readvariableop3
/savev2_adam_dense_19_bias_m_read_readvariableopB
>savev2_adam_batch_normalization_10_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_10_beta_v_read_readvariableop5
1savev2_adam_dense_15_kernel_v_read_readvariableop3
/savev2_adam_dense_15_bias_v_read_readvariableop5
1savev2_adam_dense_16_kernel_v_read_readvariableop3
/savev2_adam_dense_16_bias_v_read_readvariableopB
>savev2_adam_batch_normalization_11_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_11_beta_v_read_readvariableop5
1savev2_adam_dense_17_kernel_v_read_readvariableop3
/savev2_adam_dense_17_bias_v_read_readvariableopB
>savev2_adam_batch_normalization_12_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_12_beta_v_read_readvariableop5
1savev2_adam_dense_18_kernel_v_read_readvariableop3
/savev2_adam_dense_18_bias_v_read_readvariableopB
>savev2_adam_batch_normalization_13_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_13_beta_v_read_readvariableop5
1savev2_adam_dense_19_kernel_v_read_readvariableop3
/savev2_adam_dense_19_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpointsw
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
_temp/part
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
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ½'
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:H*
dtype0*æ&
valueÜ&BÙ&HB5layer_with_weights-0/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-0/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-0/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:H*
dtype0*¥
valueBHB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ©
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:07savev2_batch_normalization_10_gamma_read_readvariableop6savev2_batch_normalization_10_beta_read_readvariableop=savev2_batch_normalization_10_moving_mean_read_readvariableopAsavev2_batch_normalization_10_moving_variance_read_readvariableop*savev2_dense_15_kernel_read_readvariableop(savev2_dense_15_bias_read_readvariableop*savev2_dense_16_kernel_read_readvariableop(savev2_dense_16_bias_read_readvariableop7savev2_batch_normalization_11_gamma_read_readvariableop6savev2_batch_normalization_11_beta_read_readvariableop=savev2_batch_normalization_11_moving_mean_read_readvariableopAsavev2_batch_normalization_11_moving_variance_read_readvariableop*savev2_dense_17_kernel_read_readvariableop(savev2_dense_17_bias_read_readvariableop7savev2_batch_normalization_12_gamma_read_readvariableop6savev2_batch_normalization_12_beta_read_readvariableop=savev2_batch_normalization_12_moving_mean_read_readvariableopAsavev2_batch_normalization_12_moving_variance_read_readvariableop*savev2_dense_18_kernel_read_readvariableop(savev2_dense_18_bias_read_readvariableop7savev2_batch_normalization_13_gamma_read_readvariableop6savev2_batch_normalization_13_beta_read_readvariableop=savev2_batch_normalization_13_moving_mean_read_readvariableopAsavev2_batch_normalization_13_moving_variance_read_readvariableop*savev2_dense_19_kernel_read_readvariableop(savev2_dense_19_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop>savev2_adam_batch_normalization_10_gamma_m_read_readvariableop=savev2_adam_batch_normalization_10_beta_m_read_readvariableop1savev2_adam_dense_15_kernel_m_read_readvariableop/savev2_adam_dense_15_bias_m_read_readvariableop1savev2_adam_dense_16_kernel_m_read_readvariableop/savev2_adam_dense_16_bias_m_read_readvariableop>savev2_adam_batch_normalization_11_gamma_m_read_readvariableop=savev2_adam_batch_normalization_11_beta_m_read_readvariableop1savev2_adam_dense_17_kernel_m_read_readvariableop/savev2_adam_dense_17_bias_m_read_readvariableop>savev2_adam_batch_normalization_12_gamma_m_read_readvariableop=savev2_adam_batch_normalization_12_beta_m_read_readvariableop1savev2_adam_dense_18_kernel_m_read_readvariableop/savev2_adam_dense_18_bias_m_read_readvariableop>savev2_adam_batch_normalization_13_gamma_m_read_readvariableop=savev2_adam_batch_normalization_13_beta_m_read_readvariableop1savev2_adam_dense_19_kernel_m_read_readvariableop/savev2_adam_dense_19_bias_m_read_readvariableop>savev2_adam_batch_normalization_10_gamma_v_read_readvariableop=savev2_adam_batch_normalization_10_beta_v_read_readvariableop1savev2_adam_dense_15_kernel_v_read_readvariableop/savev2_adam_dense_15_bias_v_read_readvariableop1savev2_adam_dense_16_kernel_v_read_readvariableop/savev2_adam_dense_16_bias_v_read_readvariableop>savev2_adam_batch_normalization_11_gamma_v_read_readvariableop=savev2_adam_batch_normalization_11_beta_v_read_readvariableop1savev2_adam_dense_17_kernel_v_read_readvariableop/savev2_adam_dense_17_bias_v_read_readvariableop>savev2_adam_batch_normalization_12_gamma_v_read_readvariableop=savev2_adam_batch_normalization_12_beta_v_read_readvariableop1savev2_adam_dense_18_kernel_v_read_readvariableop/savev2_adam_dense_18_bias_v_read_readvariableop>savev2_adam_batch_normalization_13_gamma_v_read_readvariableop=savev2_adam_batch_normalization_13_beta_v_read_readvariableop1savev2_adam_dense_19_kernel_v_read_readvariableop/savev2_adam_dense_19_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *V
dtypesL
J2H	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*ì
_input_shapesÚ
×: :::::d:d:	d::::::	d:d:d:d:d:d:d(:(:(:(:(:(:(:: : : : : : : : : :::d:d:	d::::	d:d:d:d:d(:(:(:(:(::::d:d:	d::::	d:d:d:d:d(:(:(:(:(:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::$ 

_output_shapes

:d: 

_output_shapes
:d:%!

_output_shapes
:	d:!

_output_shapes	
::!	

_output_shapes	
::!


_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::%!

_output_shapes
:	d: 

_output_shapes
:d: 

_output_shapes
:d: 

_output_shapes
:d: 

_output_shapes
:d: 

_output_shapes
:d:$ 

_output_shapes

:d(: 

_output_shapes
:(: 

_output_shapes
:(: 

_output_shapes
:(: 

_output_shapes
:(: 

_output_shapes
:(:$ 

_output_shapes

:(: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
: :!

_output_shapes
: :"

_output_shapes
: :#

_output_shapes
: : $

_output_shapes
:: %

_output_shapes
::$& 

_output_shapes

:d: '

_output_shapes
:d:%(!

_output_shapes
:	d:!)

_output_shapes	
::!*

_output_shapes	
::!+

_output_shapes	
::%,!

_output_shapes
:	d: -

_output_shapes
:d: .

_output_shapes
:d: /

_output_shapes
:d:$0 

_output_shapes

:d(: 1

_output_shapes
:(: 2

_output_shapes
:(: 3

_output_shapes
:(:$4 

_output_shapes

:(: 5

_output_shapes
:: 6

_output_shapes
:: 7

_output_shapes
::$8 

_output_shapes

:d: 9

_output_shapes
:d:%:!

_output_shapes
:	d:!;

_output_shapes	
::!<

_output_shapes	
::!=

_output_shapes	
::%>!

_output_shapes
:	d: ?

_output_shapes
:d: @

_output_shapes
:d: A

_output_shapes
:d:$B 

_output_shapes

:d(: C

_output_shapes
:(: D

_output_shapes
:(: E

_output_shapes
:(:$F 

_output_shapes

:(: G

_output_shapes
::H

_output_shapes
: 
Ï
±
R__inference_batch_normalization_12_layer_call_and_return_conditional_losses_275554

inputs/
!batchnorm_readvariableop_resource:d3
%batchnorm_mul_readvariableop_resource:d1
#batchnorm_readvariableop_1_resource:d1
#batchnorm_readvariableop_2_resource:d
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:d*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:dP
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:d~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:d*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:dc
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdz
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:d*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:dz
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:d*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:dr
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdb
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdº
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿd: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs


õ
D__inference_dense_18_layer_call_and_return_conditional_losses_275804

inputs0
matmul_readvariableop_resource:d(-
biasadd_readvariableop_resource:(
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿd: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
õ
c
*__inference_dropout_8_layer_call_fn_276991

inputs
identity¢StatefulPartitionedCallÁ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_8_layer_call_and_return_conditional_losses_275995p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
°
Ö
7__inference_batch_normalization_11_layer_call_fn_277034

inputs
unknown:	
	unknown_0:	
	unknown_1:	
	unknown_2:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_11_layer_call_and_return_conditional_losses_275519p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ï
±
R__inference_batch_normalization_10_layer_call_and_return_conditional_losses_275390

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿº
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

F
*__inference_dropout_9_layer_call_fn_277113

inputs
identity°
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_9_layer_call_and_return_conditional_losses_275782`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿd:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
âE
þ
H__inference_sequential_3_layer_call_and_return_conditional_losses_276393 
batch_normalization_10_input+
batch_normalization_10_276328:+
batch_normalization_10_276330:+
batch_normalization_10_276332:+
batch_normalization_10_276334:!
dense_15_276337:d
dense_15_276339:d"
dense_16_276342:	d
dense_16_276344:	,
batch_normalization_11_276348:	,
batch_normalization_11_276350:	,
batch_normalization_11_276352:	,
batch_normalization_11_276354:	"
dense_17_276357:	d
dense_17_276359:d+
batch_normalization_12_276363:d+
batch_normalization_12_276365:d+
batch_normalization_12_276367:d+
batch_normalization_12_276369:d!
dense_18_276372:d(
dense_18_276374:(+
batch_normalization_13_276378:(+
batch_normalization_13_276380:(+
batch_normalization_13_276382:(+
batch_normalization_13_276384:(!
dense_19_276387:(
dense_19_276389:
identity¢.batch_normalization_10/StatefulPartitionedCall¢.batch_normalization_11/StatefulPartitionedCall¢.batch_normalization_12/StatefulPartitionedCall¢.batch_normalization_13/StatefulPartitionedCall¢ dense_15/StatefulPartitionedCall¢ dense_16/StatefulPartitionedCall¢ dense_17/StatefulPartitionedCall¢ dense_18/StatefulPartitionedCall¢ dense_19/StatefulPartitionedCall¢"dropout_10/StatefulPartitionedCall¢!dropout_8/StatefulPartitionedCall¢!dropout_9/StatefulPartitionedCallþ
.batch_normalization_10/StatefulPartitionedCallStatefulPartitionedCallbatch_normalization_10_inputbatch_normalization_10_276328batch_normalization_10_276330batch_normalization_10_276332batch_normalization_10_276334*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_10_layer_call_and_return_conditional_losses_275437¡
 dense_15/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_10/StatefulPartitionedCall:output:0dense_15_276337dense_15_276339*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_15_layer_call_and_return_conditional_losses_275721
 dense_16/StatefulPartitionedCallStatefulPartitionedCall)dense_15/StatefulPartitionedCall:output:0dense_16_276342dense_16_276344*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_16_layer_call_and_return_conditional_losses_275738î
!dropout_8/StatefulPartitionedCallStatefulPartitionedCall)dense_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_8_layer_call_and_return_conditional_losses_275995
.batch_normalization_11/StatefulPartitionedCallStatefulPartitionedCall*dropout_8/StatefulPartitionedCall:output:0batch_normalization_11_276348batch_normalization_11_276350batch_normalization_11_276352batch_normalization_11_276354*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_11_layer_call_and_return_conditional_losses_275519¡
 dense_17/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_11/StatefulPartitionedCall:output:0dense_17_276357dense_17_276359*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_17_layer_call_and_return_conditional_losses_275771
!dropout_9/StatefulPartitionedCallStatefulPartitionedCall)dense_17/StatefulPartitionedCall:output:0"^dropout_8/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_9_layer_call_and_return_conditional_losses_275962
.batch_normalization_12/StatefulPartitionedCallStatefulPartitionedCall*dropout_9/StatefulPartitionedCall:output:0batch_normalization_12_276363batch_normalization_12_276365batch_normalization_12_276367batch_normalization_12_276369*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_12_layer_call_and_return_conditional_losses_275601¡
 dense_18/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_12/StatefulPartitionedCall:output:0dense_18_276372dense_18_276374*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_18_layer_call_and_return_conditional_losses_275804
"dropout_10/StatefulPartitionedCallStatefulPartitionedCall)dense_18/StatefulPartitionedCall:output:0"^dropout_9/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_10_layer_call_and_return_conditional_losses_275929
.batch_normalization_13/StatefulPartitionedCallStatefulPartitionedCall+dropout_10/StatefulPartitionedCall:output:0batch_normalization_13_276378batch_normalization_13_276380batch_normalization_13_276382batch_normalization_13_276384*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_275683¡
 dense_19/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_13/StatefulPartitionedCall:output:0dense_19_276387dense_19_276389*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_19_layer_call_and_return_conditional_losses_275837x
IdentityIdentity)dense_19/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
NoOpNoOp/^batch_normalization_10/StatefulPartitionedCall/^batch_normalization_11/StatefulPartitionedCall/^batch_normalization_12/StatefulPartitionedCall/^batch_normalization_13/StatefulPartitionedCall!^dense_15/StatefulPartitionedCall!^dense_16/StatefulPartitionedCall!^dense_17/StatefulPartitionedCall!^dense_18/StatefulPartitionedCall!^dense_19/StatefulPartitionedCall#^dropout_10/StatefulPartitionedCall"^dropout_8/StatefulPartitionedCall"^dropout_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_10/StatefulPartitionedCall.batch_normalization_10/StatefulPartitionedCall2`
.batch_normalization_11/StatefulPartitionedCall.batch_normalization_11/StatefulPartitionedCall2`
.batch_normalization_12/StatefulPartitionedCall.batch_normalization_12/StatefulPartitionedCall2`
.batch_normalization_13/StatefulPartitionedCall.batch_normalization_13/StatefulPartitionedCall2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall2D
 dense_16/StatefulPartitionedCall dense_16/StatefulPartitionedCall2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall2D
 dense_18/StatefulPartitionedCall dense_18/StatefulPartitionedCall2D
 dense_19/StatefulPartitionedCall dense_19/StatefulPartitionedCall2H
"dropout_10/StatefulPartitionedCall"dropout_10/StatefulPartitionedCall2F
!dropout_8/StatefulPartitionedCall!dropout_8/StatefulPartitionedCall2F
!dropout_9/StatefulPartitionedCall!dropout_9/StatefulPartitionedCall:e a
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
6
_user_specified_namebatch_normalization_10_input
Ù
d
F__inference_dropout_10_layer_call_and_return_conditional_losses_277250

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ([

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ("!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ(:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
 
_user_specified_nameinputs


ö
D__inference_dense_17_layer_call_and_return_conditional_losses_275771

inputs1
matmul_readvariableop_resource:	d-
biasadd_readvariableop_resource:d
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	d*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿda
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ô	
e
F__inference_dropout_10_layer_call_and_return_conditional_losses_275929

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>¦
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ("
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ(:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
 
_user_specified_nameinputs
Ï
±
R__inference_batch_normalization_12_layer_call_and_return_conditional_losses_277181

inputs/
!batchnorm_readvariableop_resource:d3
%batchnorm_mul_readvariableop_resource:d1
#batchnorm_readvariableop_1_resource:d1
#batchnorm_readvariableop_2_resource:d
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:d*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:dP
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:d~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:d*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:dc
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdz
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:d*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:dz
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:d*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:dr
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdb
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdº
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿd: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
 

õ
D__inference_dense_19_layer_call_and_return_conditional_losses_275837

inputs0
matmul_readvariableop_resource:(-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ(: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
 
_user_specified_nameinputs
û	
d
E__inference_dropout_8_layer_call_and_return_conditional_losses_275995

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>§
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
á
µ
R__inference_batch_normalization_11_layer_call_and_return_conditional_losses_277054

inputs0
!batchnorm_readvariableop_resource:	4
%batchnorm_mul_readvariableop_resource:	2
#batchnorm_readvariableop_1_resource:	2
#batchnorm_readvariableop_2_resource:	
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿº
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
·

-__inference_sequential_3_layer_call_fn_276513

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:d
	unknown_4:d
	unknown_5:	d
	unknown_6:	
	unknown_7:	
	unknown_8:	
	unknown_9:	

unknown_10:	

unknown_11:	d

unknown_12:d

unknown_13:d

unknown_14:d

unknown_15:d

unknown_16:d

unknown_17:d(

unknown_18:(

unknown_19:(

unknown_20:(

unknown_21:(

unknown_22:(

unknown_23:(

unknown_24:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_24*&
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*4
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_3_layer_call_and_return_conditional_losses_276145o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¯
ü
H__inference_sequential_3_layer_call_and_return_conditional_losses_276802

inputsL
>batch_normalization_10_assignmovingavg_readvariableop_resource:N
@batch_normalization_10_assignmovingavg_1_readvariableop_resource:J
<batch_normalization_10_batchnorm_mul_readvariableop_resource:F
8batch_normalization_10_batchnorm_readvariableop_resource:9
'dense_15_matmul_readvariableop_resource:d6
(dense_15_biasadd_readvariableop_resource:d:
'dense_16_matmul_readvariableop_resource:	d7
(dense_16_biasadd_readvariableop_resource:	M
>batch_normalization_11_assignmovingavg_readvariableop_resource:	O
@batch_normalization_11_assignmovingavg_1_readvariableop_resource:	K
<batch_normalization_11_batchnorm_mul_readvariableop_resource:	G
8batch_normalization_11_batchnorm_readvariableop_resource:	:
'dense_17_matmul_readvariableop_resource:	d6
(dense_17_biasadd_readvariableop_resource:dL
>batch_normalization_12_assignmovingavg_readvariableop_resource:dN
@batch_normalization_12_assignmovingavg_1_readvariableop_resource:dJ
<batch_normalization_12_batchnorm_mul_readvariableop_resource:dF
8batch_normalization_12_batchnorm_readvariableop_resource:d9
'dense_18_matmul_readvariableop_resource:d(6
(dense_18_biasadd_readvariableop_resource:(L
>batch_normalization_13_assignmovingavg_readvariableop_resource:(N
@batch_normalization_13_assignmovingavg_1_readvariableop_resource:(J
<batch_normalization_13_batchnorm_mul_readvariableop_resource:(F
8batch_normalization_13_batchnorm_readvariableop_resource:(9
'dense_19_matmul_readvariableop_resource:(6
(dense_19_biasadd_readvariableop_resource:
identity¢&batch_normalization_10/AssignMovingAvg¢5batch_normalization_10/AssignMovingAvg/ReadVariableOp¢(batch_normalization_10/AssignMovingAvg_1¢7batch_normalization_10/AssignMovingAvg_1/ReadVariableOp¢/batch_normalization_10/batchnorm/ReadVariableOp¢3batch_normalization_10/batchnorm/mul/ReadVariableOp¢&batch_normalization_11/AssignMovingAvg¢5batch_normalization_11/AssignMovingAvg/ReadVariableOp¢(batch_normalization_11/AssignMovingAvg_1¢7batch_normalization_11/AssignMovingAvg_1/ReadVariableOp¢/batch_normalization_11/batchnorm/ReadVariableOp¢3batch_normalization_11/batchnorm/mul/ReadVariableOp¢&batch_normalization_12/AssignMovingAvg¢5batch_normalization_12/AssignMovingAvg/ReadVariableOp¢(batch_normalization_12/AssignMovingAvg_1¢7batch_normalization_12/AssignMovingAvg_1/ReadVariableOp¢/batch_normalization_12/batchnorm/ReadVariableOp¢3batch_normalization_12/batchnorm/mul/ReadVariableOp¢&batch_normalization_13/AssignMovingAvg¢5batch_normalization_13/AssignMovingAvg/ReadVariableOp¢(batch_normalization_13/AssignMovingAvg_1¢7batch_normalization_13/AssignMovingAvg_1/ReadVariableOp¢/batch_normalization_13/batchnorm/ReadVariableOp¢3batch_normalization_13/batchnorm/mul/ReadVariableOp¢dense_15/BiasAdd/ReadVariableOp¢dense_15/MatMul/ReadVariableOp¢dense_16/BiasAdd/ReadVariableOp¢dense_16/MatMul/ReadVariableOp¢dense_17/BiasAdd/ReadVariableOp¢dense_17/MatMul/ReadVariableOp¢dense_18/BiasAdd/ReadVariableOp¢dense_18/MatMul/ReadVariableOp¢dense_19/BiasAdd/ReadVariableOp¢dense_19/MatMul/ReadVariableOp
5batch_normalization_10/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ­
#batch_normalization_10/moments/meanMeaninputs>batch_normalization_10/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(
+batch_normalization_10/moments/StopGradientStopGradient,batch_normalization_10/moments/mean:output:0*
T0*
_output_shapes

:µ
0batch_normalization_10/moments/SquaredDifferenceSquaredDifferenceinputs4batch_normalization_10/moments/StopGradient:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
9batch_normalization_10/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ã
'batch_normalization_10/moments/varianceMean4batch_normalization_10/moments/SquaredDifference:z:0Bbatch_normalization_10/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(
&batch_normalization_10/moments/SqueezeSqueeze,batch_normalization_10/moments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 ¡
(batch_normalization_10/moments/Squeeze_1Squeeze0batch_normalization_10/moments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 q
,batch_normalization_10/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<°
5batch_normalization_10/AssignMovingAvg/ReadVariableOpReadVariableOp>batch_normalization_10_assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0Æ
*batch_normalization_10/AssignMovingAvg/subSub=batch_normalization_10/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_10/moments/Squeeze:output:0*
T0*
_output_shapes
:½
*batch_normalization_10/AssignMovingAvg/mulMul.batch_normalization_10/AssignMovingAvg/sub:z:05batch_normalization_10/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:
&batch_normalization_10/AssignMovingAvgAssignSubVariableOp>batch_normalization_10_assignmovingavg_readvariableop_resource.batch_normalization_10/AssignMovingAvg/mul:z:06^batch_normalization_10/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0s
.batch_normalization_10/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<´
7batch_normalization_10/AssignMovingAvg_1/ReadVariableOpReadVariableOp@batch_normalization_10_assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0Ì
,batch_normalization_10/AssignMovingAvg_1/subSub?batch_normalization_10/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_10/moments/Squeeze_1:output:0*
T0*
_output_shapes
:Ã
,batch_normalization_10/AssignMovingAvg_1/mulMul0batch_normalization_10/AssignMovingAvg_1/sub:z:07batch_normalization_10/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:
(batch_normalization_10/AssignMovingAvg_1AssignSubVariableOp@batch_normalization_10_assignmovingavg_1_readvariableop_resource0batch_normalization_10/AssignMovingAvg_1/mul:z:08^batch_normalization_10/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0k
&batch_normalization_10/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:¶
$batch_normalization_10/batchnorm/addAddV21batch_normalization_10/moments/Squeeze_1:output:0/batch_normalization_10/batchnorm/add/y:output:0*
T0*
_output_shapes
:~
&batch_normalization_10/batchnorm/RsqrtRsqrt(batch_normalization_10/batchnorm/add:z:0*
T0*
_output_shapes
:¬
3batch_normalization_10/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_10_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0¹
$batch_normalization_10/batchnorm/mulMul*batch_normalization_10/batchnorm/Rsqrt:y:0;batch_normalization_10/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:
&batch_normalization_10/batchnorm/mul_1Mulinputs(batch_normalization_10/batchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ­
&batch_normalization_10/batchnorm/mul_2Mul/batch_normalization_10/moments/Squeeze:output:0(batch_normalization_10/batchnorm/mul:z:0*
T0*
_output_shapes
:¤
/batch_normalization_10/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_10_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0µ
$batch_normalization_10/batchnorm/subSub7batch_normalization_10/batchnorm/ReadVariableOp:value:0*batch_normalization_10/batchnorm/mul_2:z:0*
T0*
_output_shapes
:·
&batch_normalization_10/batchnorm/add_1AddV2*batch_normalization_10/batchnorm/mul_1:z:0(batch_normalization_10/batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_15/MatMul/ReadVariableOpReadVariableOp'dense_15_matmul_readvariableop_resource*
_output_shapes

:d*
dtype0
dense_15/MatMulMatMul*batch_normalization_10/batchnorm/add_1:z:0&dense_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
dense_15/BiasAdd/ReadVariableOpReadVariableOp(dense_15_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0
dense_15/BiasAddBiasAdddense_15/MatMul:product:0'dense_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdb
dense_15/ReluReludense_15/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
dense_16/MatMul/ReadVariableOpReadVariableOp'dense_16_matmul_readvariableop_resource*
_output_shapes
:	d*
dtype0
dense_16/MatMulMatMuldense_15/Relu:activations:0&dense_16/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_16/BiasAdd/ReadVariableOpReadVariableOp(dense_16_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_16/BiasAddBiasAdddense_16/MatMul:product:0'dense_16/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
dense_16/ReluReludense_16/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
dropout_8/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?
dropout_8/dropout/MulMuldense_16/Relu:activations:0 dropout_8/dropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
dropout_8/dropout/ShapeShapedense_16/Relu:activations:0*
T0*
_output_shapes
:¡
.dropout_8/dropout/random_uniform/RandomUniformRandomUniform dropout_8/dropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0e
 dropout_8/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>Å
dropout_8/dropout/GreaterEqualGreaterEqual7dropout_8/dropout/random_uniform/RandomUniform:output:0)dropout_8/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dropout_8/dropout/CastCast"dropout_8/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dropout_8/dropout/Mul_1Muldropout_8/dropout/Mul:z:0dropout_8/dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
5batch_normalization_11/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: Ã
#batch_normalization_11/moments/meanMeandropout_8/dropout/Mul_1:z:0>batch_normalization_11/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(
+batch_normalization_11/moments/StopGradientStopGradient,batch_normalization_11/moments/mean:output:0*
T0*
_output_shapes
:	Ë
0batch_normalization_11/moments/SquaredDifferenceSquaredDifferencedropout_8/dropout/Mul_1:z:04batch_normalization_11/moments/StopGradient:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
9batch_normalization_11/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ä
'batch_normalization_11/moments/varianceMean4batch_normalization_11/moments/SquaredDifference:z:0Bbatch_normalization_11/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(
&batch_normalization_11/moments/SqueezeSqueeze,batch_normalization_11/moments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 ¢
(batch_normalization_11/moments/Squeeze_1Squeeze0batch_normalization_11/moments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 q
,batch_normalization_11/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<±
5batch_normalization_11/AssignMovingAvg/ReadVariableOpReadVariableOp>batch_normalization_11_assignmovingavg_readvariableop_resource*
_output_shapes	
:*
dtype0Ç
*batch_normalization_11/AssignMovingAvg/subSub=batch_normalization_11/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_11/moments/Squeeze:output:0*
T0*
_output_shapes	
:¾
*batch_normalization_11/AssignMovingAvg/mulMul.batch_normalization_11/AssignMovingAvg/sub:z:05batch_normalization_11/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:
&batch_normalization_11/AssignMovingAvgAssignSubVariableOp>batch_normalization_11_assignmovingavg_readvariableop_resource.batch_normalization_11/AssignMovingAvg/mul:z:06^batch_normalization_11/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0s
.batch_normalization_11/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<µ
7batch_normalization_11/AssignMovingAvg_1/ReadVariableOpReadVariableOp@batch_normalization_11_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:*
dtype0Í
,batch_normalization_11/AssignMovingAvg_1/subSub?batch_normalization_11/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_11/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:Ä
,batch_normalization_11/AssignMovingAvg_1/mulMul0batch_normalization_11/AssignMovingAvg_1/sub:z:07batch_normalization_11/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:
(batch_normalization_11/AssignMovingAvg_1AssignSubVariableOp@batch_normalization_11_assignmovingavg_1_readvariableop_resource0batch_normalization_11/AssignMovingAvg_1/mul:z:08^batch_normalization_11/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0k
&batch_normalization_11/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:·
$batch_normalization_11/batchnorm/addAddV21batch_normalization_11/moments/Squeeze_1:output:0/batch_normalization_11/batchnorm/add/y:output:0*
T0*
_output_shapes	
:
&batch_normalization_11/batchnorm/RsqrtRsqrt(batch_normalization_11/batchnorm/add:z:0*
T0*
_output_shapes	
:­
3batch_normalization_11/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_11_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0º
$batch_normalization_11/batchnorm/mulMul*batch_normalization_11/batchnorm/Rsqrt:y:0;batch_normalization_11/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:§
&batch_normalization_11/batchnorm/mul_1Muldropout_8/dropout/Mul_1:z:0(batch_normalization_11/batchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®
&batch_normalization_11/batchnorm/mul_2Mul/batch_normalization_11/moments/Squeeze:output:0(batch_normalization_11/batchnorm/mul:z:0*
T0*
_output_shapes	
:¥
/batch_normalization_11/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_11_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0¶
$batch_normalization_11/batchnorm/subSub7batch_normalization_11/batchnorm/ReadVariableOp:value:0*batch_normalization_11/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:¸
&batch_normalization_11/batchnorm/add_1AddV2*batch_normalization_11/batchnorm/mul_1:z:0(batch_normalization_11/batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_17/MatMul/ReadVariableOpReadVariableOp'dense_17_matmul_readvariableop_resource*
_output_shapes
:	d*
dtype0
dense_17/MatMulMatMul*batch_normalization_11/batchnorm/add_1:z:0&dense_17/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
dense_17/BiasAdd/ReadVariableOpReadVariableOp(dense_17_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0
dense_17/BiasAddBiasAdddense_17/MatMul:product:0'dense_17/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdb
dense_17/ReluReludense_17/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd\
dropout_9/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?
dropout_9/dropout/MulMuldense_17/Relu:activations:0 dropout_9/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdb
dropout_9/dropout/ShapeShapedense_17/Relu:activations:0*
T0*
_output_shapes
: 
.dropout_9/dropout/random_uniform/RandomUniformRandomUniform dropout_9/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0e
 dropout_9/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>Ä
dropout_9/dropout/GreaterEqualGreaterEqual7dropout_9/dropout/random_uniform/RandomUniform:output:0)dropout_9/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
dropout_9/dropout/CastCast"dropout_9/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
dropout_9/dropout/Mul_1Muldropout_9/dropout/Mul:z:0dropout_9/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
5batch_normalization_12/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: Â
#batch_normalization_12/moments/meanMeandropout_9/dropout/Mul_1:z:0>batch_normalization_12/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:d*
	keep_dims(
+batch_normalization_12/moments/StopGradientStopGradient,batch_normalization_12/moments/mean:output:0*
T0*
_output_shapes

:dÊ
0batch_normalization_12/moments/SquaredDifferenceSquaredDifferencedropout_9/dropout/Mul_1:z:04batch_normalization_12/moments/StopGradient:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
9batch_normalization_12/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ã
'batch_normalization_12/moments/varianceMean4batch_normalization_12/moments/SquaredDifference:z:0Bbatch_normalization_12/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:d*
	keep_dims(
&batch_normalization_12/moments/SqueezeSqueeze,batch_normalization_12/moments/mean:output:0*
T0*
_output_shapes
:d*
squeeze_dims
 ¡
(batch_normalization_12/moments/Squeeze_1Squeeze0batch_normalization_12/moments/variance:output:0*
T0*
_output_shapes
:d*
squeeze_dims
 q
,batch_normalization_12/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<°
5batch_normalization_12/AssignMovingAvg/ReadVariableOpReadVariableOp>batch_normalization_12_assignmovingavg_readvariableop_resource*
_output_shapes
:d*
dtype0Æ
*batch_normalization_12/AssignMovingAvg/subSub=batch_normalization_12/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_12/moments/Squeeze:output:0*
T0*
_output_shapes
:d½
*batch_normalization_12/AssignMovingAvg/mulMul.batch_normalization_12/AssignMovingAvg/sub:z:05batch_normalization_12/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:d
&batch_normalization_12/AssignMovingAvgAssignSubVariableOp>batch_normalization_12_assignmovingavg_readvariableop_resource.batch_normalization_12/AssignMovingAvg/mul:z:06^batch_normalization_12/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0s
.batch_normalization_12/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<´
7batch_normalization_12/AssignMovingAvg_1/ReadVariableOpReadVariableOp@batch_normalization_12_assignmovingavg_1_readvariableop_resource*
_output_shapes
:d*
dtype0Ì
,batch_normalization_12/AssignMovingAvg_1/subSub?batch_normalization_12/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_12/moments/Squeeze_1:output:0*
T0*
_output_shapes
:dÃ
,batch_normalization_12/AssignMovingAvg_1/mulMul0batch_normalization_12/AssignMovingAvg_1/sub:z:07batch_normalization_12/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:d
(batch_normalization_12/AssignMovingAvg_1AssignSubVariableOp@batch_normalization_12_assignmovingavg_1_readvariableop_resource0batch_normalization_12/AssignMovingAvg_1/mul:z:08^batch_normalization_12/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0k
&batch_normalization_12/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:¶
$batch_normalization_12/batchnorm/addAddV21batch_normalization_12/moments/Squeeze_1:output:0/batch_normalization_12/batchnorm/add/y:output:0*
T0*
_output_shapes
:d~
&batch_normalization_12/batchnorm/RsqrtRsqrt(batch_normalization_12/batchnorm/add:z:0*
T0*
_output_shapes
:d¬
3batch_normalization_12/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_12_batchnorm_mul_readvariableop_resource*
_output_shapes
:d*
dtype0¹
$batch_normalization_12/batchnorm/mulMul*batch_normalization_12/batchnorm/Rsqrt:y:0;batch_normalization_12/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:d¦
&batch_normalization_12/batchnorm/mul_1Muldropout_9/dropout/Mul_1:z:0(batch_normalization_12/batchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd­
&batch_normalization_12/batchnorm/mul_2Mul/batch_normalization_12/moments/Squeeze:output:0(batch_normalization_12/batchnorm/mul:z:0*
T0*
_output_shapes
:d¤
/batch_normalization_12/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_12_batchnorm_readvariableop_resource*
_output_shapes
:d*
dtype0µ
$batch_normalization_12/batchnorm/subSub7batch_normalization_12/batchnorm/ReadVariableOp:value:0*batch_normalization_12/batchnorm/mul_2:z:0*
T0*
_output_shapes
:d·
&batch_normalization_12/batchnorm/add_1AddV2*batch_normalization_12/batchnorm/mul_1:z:0(batch_normalization_12/batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
dense_18/MatMul/ReadVariableOpReadVariableOp'dense_18_matmul_readvariableop_resource*
_output_shapes

:d(*
dtype0
dense_18/MatMulMatMul*batch_normalization_12/batchnorm/add_1:z:0&dense_18/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
dense_18/BiasAdd/ReadVariableOpReadVariableOp(dense_18_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
dense_18/BiasAddBiasAdddense_18/MatMul:product:0'dense_18/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(b
dense_18/ReluReludense_18/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(]
dropout_10/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?
dropout_10/dropout/MulMuldense_18/Relu:activations:0!dropout_10/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(c
dropout_10/dropout/ShapeShapedense_18/Relu:activations:0*
T0*
_output_shapes
:¢
/dropout_10/dropout/random_uniform/RandomUniformRandomUniform!dropout_10/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(*
dtype0f
!dropout_10/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>Ç
dropout_10/dropout/GreaterEqualGreaterEqual8dropout_10/dropout/random_uniform/RandomUniform:output:0*dropout_10/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
dropout_10/dropout/CastCast#dropout_10/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
dropout_10/dropout/Mul_1Muldropout_10/dropout/Mul:z:0dropout_10/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
5batch_normalization_13/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: Ã
#batch_normalization_13/moments/meanMeandropout_10/dropout/Mul_1:z:0>batch_normalization_13/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:(*
	keep_dims(
+batch_normalization_13/moments/StopGradientStopGradient,batch_normalization_13/moments/mean:output:0*
T0*
_output_shapes

:(Ë
0batch_normalization_13/moments/SquaredDifferenceSquaredDifferencedropout_10/dropout/Mul_1:z:04batch_normalization_13/moments/StopGradient:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
9batch_normalization_13/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ã
'batch_normalization_13/moments/varianceMean4batch_normalization_13/moments/SquaredDifference:z:0Bbatch_normalization_13/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:(*
	keep_dims(
&batch_normalization_13/moments/SqueezeSqueeze,batch_normalization_13/moments/mean:output:0*
T0*
_output_shapes
:(*
squeeze_dims
 ¡
(batch_normalization_13/moments/Squeeze_1Squeeze0batch_normalization_13/moments/variance:output:0*
T0*
_output_shapes
:(*
squeeze_dims
 q
,batch_normalization_13/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<°
5batch_normalization_13/AssignMovingAvg/ReadVariableOpReadVariableOp>batch_normalization_13_assignmovingavg_readvariableop_resource*
_output_shapes
:(*
dtype0Æ
*batch_normalization_13/AssignMovingAvg/subSub=batch_normalization_13/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_13/moments/Squeeze:output:0*
T0*
_output_shapes
:(½
*batch_normalization_13/AssignMovingAvg/mulMul.batch_normalization_13/AssignMovingAvg/sub:z:05batch_normalization_13/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:(
&batch_normalization_13/AssignMovingAvgAssignSubVariableOp>batch_normalization_13_assignmovingavg_readvariableop_resource.batch_normalization_13/AssignMovingAvg/mul:z:06^batch_normalization_13/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0s
.batch_normalization_13/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<´
7batch_normalization_13/AssignMovingAvg_1/ReadVariableOpReadVariableOp@batch_normalization_13_assignmovingavg_1_readvariableop_resource*
_output_shapes
:(*
dtype0Ì
,batch_normalization_13/AssignMovingAvg_1/subSub?batch_normalization_13/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_13/moments/Squeeze_1:output:0*
T0*
_output_shapes
:(Ã
,batch_normalization_13/AssignMovingAvg_1/mulMul0batch_normalization_13/AssignMovingAvg_1/sub:z:07batch_normalization_13/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:(
(batch_normalization_13/AssignMovingAvg_1AssignSubVariableOp@batch_normalization_13_assignmovingavg_1_readvariableop_resource0batch_normalization_13/AssignMovingAvg_1/mul:z:08^batch_normalization_13/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0k
&batch_normalization_13/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:¶
$batch_normalization_13/batchnorm/addAddV21batch_normalization_13/moments/Squeeze_1:output:0/batch_normalization_13/batchnorm/add/y:output:0*
T0*
_output_shapes
:(~
&batch_normalization_13/batchnorm/RsqrtRsqrt(batch_normalization_13/batchnorm/add:z:0*
T0*
_output_shapes
:(¬
3batch_normalization_13/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_13_batchnorm_mul_readvariableop_resource*
_output_shapes
:(*
dtype0¹
$batch_normalization_13/batchnorm/mulMul*batch_normalization_13/batchnorm/Rsqrt:y:0;batch_normalization_13/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:(§
&batch_normalization_13/batchnorm/mul_1Muldropout_10/dropout/Mul_1:z:0(batch_normalization_13/batchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(­
&batch_normalization_13/batchnorm/mul_2Mul/batch_normalization_13/moments/Squeeze:output:0(batch_normalization_13/batchnorm/mul:z:0*
T0*
_output_shapes
:(¤
/batch_normalization_13/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_13_batchnorm_readvariableop_resource*
_output_shapes
:(*
dtype0µ
$batch_normalization_13/batchnorm/subSub7batch_normalization_13/batchnorm/ReadVariableOp:value:0*batch_normalization_13/batchnorm/mul_2:z:0*
T0*
_output_shapes
:(·
&batch_normalization_13/batchnorm/add_1AddV2*batch_normalization_13/batchnorm/mul_1:z:0(batch_normalization_13/batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
dense_19/MatMul/ReadVariableOpReadVariableOp'dense_19_matmul_readvariableop_resource*
_output_shapes

:(*
dtype0
dense_19/MatMulMatMul*batch_normalization_13/batchnorm/add_1:z:0&dense_19/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_19/BiasAdd/ReadVariableOpReadVariableOp(dense_19_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_19/BiasAddBiasAdddense_19/MatMul:product:0'dense_19/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
dense_19/SoftmaxSoftmaxdense_19/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
IdentityIdentitydense_19/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÍ
NoOpNoOp'^batch_normalization_10/AssignMovingAvg6^batch_normalization_10/AssignMovingAvg/ReadVariableOp)^batch_normalization_10/AssignMovingAvg_18^batch_normalization_10/AssignMovingAvg_1/ReadVariableOp0^batch_normalization_10/batchnorm/ReadVariableOp4^batch_normalization_10/batchnorm/mul/ReadVariableOp'^batch_normalization_11/AssignMovingAvg6^batch_normalization_11/AssignMovingAvg/ReadVariableOp)^batch_normalization_11/AssignMovingAvg_18^batch_normalization_11/AssignMovingAvg_1/ReadVariableOp0^batch_normalization_11/batchnorm/ReadVariableOp4^batch_normalization_11/batchnorm/mul/ReadVariableOp'^batch_normalization_12/AssignMovingAvg6^batch_normalization_12/AssignMovingAvg/ReadVariableOp)^batch_normalization_12/AssignMovingAvg_18^batch_normalization_12/AssignMovingAvg_1/ReadVariableOp0^batch_normalization_12/batchnorm/ReadVariableOp4^batch_normalization_12/batchnorm/mul/ReadVariableOp'^batch_normalization_13/AssignMovingAvg6^batch_normalization_13/AssignMovingAvg/ReadVariableOp)^batch_normalization_13/AssignMovingAvg_18^batch_normalization_13/AssignMovingAvg_1/ReadVariableOp0^batch_normalization_13/batchnorm/ReadVariableOp4^batch_normalization_13/batchnorm/mul/ReadVariableOp ^dense_15/BiasAdd/ReadVariableOp^dense_15/MatMul/ReadVariableOp ^dense_16/BiasAdd/ReadVariableOp^dense_16/MatMul/ReadVariableOp ^dense_17/BiasAdd/ReadVariableOp^dense_17/MatMul/ReadVariableOp ^dense_18/BiasAdd/ReadVariableOp^dense_18/MatMul/ReadVariableOp ^dense_19/BiasAdd/ReadVariableOp^dense_19/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : 2P
&batch_normalization_10/AssignMovingAvg&batch_normalization_10/AssignMovingAvg2n
5batch_normalization_10/AssignMovingAvg/ReadVariableOp5batch_normalization_10/AssignMovingAvg/ReadVariableOp2T
(batch_normalization_10/AssignMovingAvg_1(batch_normalization_10/AssignMovingAvg_12r
7batch_normalization_10/AssignMovingAvg_1/ReadVariableOp7batch_normalization_10/AssignMovingAvg_1/ReadVariableOp2b
/batch_normalization_10/batchnorm/ReadVariableOp/batch_normalization_10/batchnorm/ReadVariableOp2j
3batch_normalization_10/batchnorm/mul/ReadVariableOp3batch_normalization_10/batchnorm/mul/ReadVariableOp2P
&batch_normalization_11/AssignMovingAvg&batch_normalization_11/AssignMovingAvg2n
5batch_normalization_11/AssignMovingAvg/ReadVariableOp5batch_normalization_11/AssignMovingAvg/ReadVariableOp2T
(batch_normalization_11/AssignMovingAvg_1(batch_normalization_11/AssignMovingAvg_12r
7batch_normalization_11/AssignMovingAvg_1/ReadVariableOp7batch_normalization_11/AssignMovingAvg_1/ReadVariableOp2b
/batch_normalization_11/batchnorm/ReadVariableOp/batch_normalization_11/batchnorm/ReadVariableOp2j
3batch_normalization_11/batchnorm/mul/ReadVariableOp3batch_normalization_11/batchnorm/mul/ReadVariableOp2P
&batch_normalization_12/AssignMovingAvg&batch_normalization_12/AssignMovingAvg2n
5batch_normalization_12/AssignMovingAvg/ReadVariableOp5batch_normalization_12/AssignMovingAvg/ReadVariableOp2T
(batch_normalization_12/AssignMovingAvg_1(batch_normalization_12/AssignMovingAvg_12r
7batch_normalization_12/AssignMovingAvg_1/ReadVariableOp7batch_normalization_12/AssignMovingAvg_1/ReadVariableOp2b
/batch_normalization_12/batchnorm/ReadVariableOp/batch_normalization_12/batchnorm/ReadVariableOp2j
3batch_normalization_12/batchnorm/mul/ReadVariableOp3batch_normalization_12/batchnorm/mul/ReadVariableOp2P
&batch_normalization_13/AssignMovingAvg&batch_normalization_13/AssignMovingAvg2n
5batch_normalization_13/AssignMovingAvg/ReadVariableOp5batch_normalization_13/AssignMovingAvg/ReadVariableOp2T
(batch_normalization_13/AssignMovingAvg_1(batch_normalization_13/AssignMovingAvg_12r
7batch_normalization_13/AssignMovingAvg_1/ReadVariableOp7batch_normalization_13/AssignMovingAvg_1/ReadVariableOp2b
/batch_normalization_13/batchnorm/ReadVariableOp/batch_normalization_13/batchnorm/ReadVariableOp2j
3batch_normalization_13/batchnorm/mul/ReadVariableOp3batch_normalization_13/batchnorm/mul/ReadVariableOp2B
dense_15/BiasAdd/ReadVariableOpdense_15/BiasAdd/ReadVariableOp2@
dense_15/MatMul/ReadVariableOpdense_15/MatMul/ReadVariableOp2B
dense_16/BiasAdd/ReadVariableOpdense_16/BiasAdd/ReadVariableOp2@
dense_16/MatMul/ReadVariableOpdense_16/MatMul/ReadVariableOp2B
dense_17/BiasAdd/ReadVariableOpdense_17/BiasAdd/ReadVariableOp2@
dense_17/MatMul/ReadVariableOpdense_17/MatMul/ReadVariableOp2B
dense_18/BiasAdd/ReadVariableOpdense_18/BiasAdd/ReadVariableOp2@
dense_18/MatMul/ReadVariableOpdense_18/MatMul/ReadVariableOp2B
dense_19/BiasAdd/ReadVariableOpdense_19/BiasAdd/ReadVariableOp2@
dense_19/MatMul/ReadVariableOpdense_19/MatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ª
Ò
7__inference_batch_normalization_13_layer_call_fn_277275

inputs
unknown:(
	unknown_0:(
	unknown_1:(
	unknown_2:(
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_275636o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ(: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
 
_user_specified_nameinputs
Ü
c
E__inference_dropout_8_layer_call_and_return_conditional_losses_275749

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¨
Ò
7__inference_batch_normalization_10_layer_call_fn_276887

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity¢StatefulPartitionedCallÿ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_10_layer_call_and_return_conditional_losses_275437o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¦A

H__inference_sequential_3_layer_call_and_return_conditional_losses_276325 
batch_normalization_10_input+
batch_normalization_10_276260:+
batch_normalization_10_276262:+
batch_normalization_10_276264:+
batch_normalization_10_276266:!
dense_15_276269:d
dense_15_276271:d"
dense_16_276274:	d
dense_16_276276:	,
batch_normalization_11_276280:	,
batch_normalization_11_276282:	,
batch_normalization_11_276284:	,
batch_normalization_11_276286:	"
dense_17_276289:	d
dense_17_276291:d+
batch_normalization_12_276295:d+
batch_normalization_12_276297:d+
batch_normalization_12_276299:d+
batch_normalization_12_276301:d!
dense_18_276304:d(
dense_18_276306:(+
batch_normalization_13_276310:(+
batch_normalization_13_276312:(+
batch_normalization_13_276314:(+
batch_normalization_13_276316:(!
dense_19_276319:(
dense_19_276321:
identity¢.batch_normalization_10/StatefulPartitionedCall¢.batch_normalization_11/StatefulPartitionedCall¢.batch_normalization_12/StatefulPartitionedCall¢.batch_normalization_13/StatefulPartitionedCall¢ dense_15/StatefulPartitionedCall¢ dense_16/StatefulPartitionedCall¢ dense_17/StatefulPartitionedCall¢ dense_18/StatefulPartitionedCall¢ dense_19/StatefulPartitionedCall
.batch_normalization_10/StatefulPartitionedCallStatefulPartitionedCallbatch_normalization_10_inputbatch_normalization_10_276260batch_normalization_10_276262batch_normalization_10_276264batch_normalization_10_276266*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_10_layer_call_and_return_conditional_losses_275390¡
 dense_15/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_10/StatefulPartitionedCall:output:0dense_15_276269dense_15_276271*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_15_layer_call_and_return_conditional_losses_275721
 dense_16/StatefulPartitionedCallStatefulPartitionedCall)dense_15/StatefulPartitionedCall:output:0dense_16_276274dense_16_276276*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_16_layer_call_and_return_conditional_losses_275738Þ
dropout_8/PartitionedCallPartitionedCall)dense_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_8_layer_call_and_return_conditional_losses_275749
.batch_normalization_11/StatefulPartitionedCallStatefulPartitionedCall"dropout_8/PartitionedCall:output:0batch_normalization_11_276280batch_normalization_11_276282batch_normalization_11_276284batch_normalization_11_276286*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_11_layer_call_and_return_conditional_losses_275472¡
 dense_17/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_11/StatefulPartitionedCall:output:0dense_17_276289dense_17_276291*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_17_layer_call_and_return_conditional_losses_275771Ý
dropout_9/PartitionedCallPartitionedCall)dense_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_9_layer_call_and_return_conditional_losses_275782
.batch_normalization_12/StatefulPartitionedCallStatefulPartitionedCall"dropout_9/PartitionedCall:output:0batch_normalization_12_276295batch_normalization_12_276297batch_normalization_12_276299batch_normalization_12_276301*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_12_layer_call_and_return_conditional_losses_275554¡
 dense_18/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_12/StatefulPartitionedCall:output:0dense_18_276304dense_18_276306*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_18_layer_call_and_return_conditional_losses_275804ß
dropout_10/PartitionedCallPartitionedCall)dense_18/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_10_layer_call_and_return_conditional_losses_275815
.batch_normalization_13/StatefulPartitionedCallStatefulPartitionedCall#dropout_10/PartitionedCall:output:0batch_normalization_13_276310batch_normalization_13_276312batch_normalization_13_276314batch_normalization_13_276316*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_275636¡
 dense_19/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_13/StatefulPartitionedCall:output:0dense_19_276319dense_19_276321*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_19_layer_call_and_return_conditional_losses_275837x
IdentityIdentity)dense_19/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¹
NoOpNoOp/^batch_normalization_10/StatefulPartitionedCall/^batch_normalization_11/StatefulPartitionedCall/^batch_normalization_12/StatefulPartitionedCall/^batch_normalization_13/StatefulPartitionedCall!^dense_15/StatefulPartitionedCall!^dense_16/StatefulPartitionedCall!^dense_17/StatefulPartitionedCall!^dense_18/StatefulPartitionedCall!^dense_19/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_10/StatefulPartitionedCall.batch_normalization_10/StatefulPartitionedCall2`
.batch_normalization_11/StatefulPartitionedCall.batch_normalization_11/StatefulPartitionedCall2`
.batch_normalization_12/StatefulPartitionedCall.batch_normalization_12/StatefulPartitionedCall2`
.batch_normalization_13/StatefulPartitionedCall.batch_normalization_13/StatefulPartitionedCall2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall2D
 dense_16/StatefulPartitionedCall dense_16/StatefulPartitionedCall2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall2D
 dense_18/StatefulPartitionedCall dense_18/StatefulPartitionedCall2D
 dense_19/StatefulPartitionedCall dense_19/StatefulPartitionedCall:e a
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
6
_user_specified_namebatch_normalization_10_input


õ
D__inference_dense_15_layer_call_and_return_conditional_losses_275721

inputs0
matmul_readvariableop_resource:d-
biasadd_readvariableop_resource:d
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿda
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ñ
c
*__inference_dropout_9_layer_call_fn_277118

inputs
identity¢StatefulPartitionedCallÀ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_9_layer_call_and_return_conditional_losses_275962o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿd22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
¨
Ò
7__inference_batch_normalization_12_layer_call_fn_277161

inputs
unknown:d
	unknown_0:d
	unknown_1:d
	unknown_2:d
identity¢StatefulPartitionedCallÿ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_12_layer_call_and_return_conditional_losses_275601o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿd: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
ª
Ò
7__inference_batch_normalization_12_layer_call_fn_277148

inputs
unknown:d
	unknown_0:d
	unknown_1:d
	unknown_2:d
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_12_layer_call_and_return_conditional_losses_275554o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿd: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
û	
d
E__inference_dropout_8_layer_call_and_return_conditional_losses_277008

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>§
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¡
G
+__inference_dropout_10_layer_call_fn_277240

inputs
identity±
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_10_layer_call_and_return_conditional_losses_275815`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ("
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ(:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
 
_user_specified_nameinputs


õ
D__inference_dense_15_layer_call_and_return_conditional_losses_276961

inputs0
matmul_readvariableop_resource:d-
biasadd_readvariableop_resource:d
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿda
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ù
d
F__inference_dropout_10_layer_call_and_return_conditional_losses_275815

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ([

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ("!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ(:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
 
_user_specified_nameinputs
 E
è
H__inference_sequential_3_layer_call_and_return_conditional_losses_276145

inputs+
batch_normalization_10_276080:+
batch_normalization_10_276082:+
batch_normalization_10_276084:+
batch_normalization_10_276086:!
dense_15_276089:d
dense_15_276091:d"
dense_16_276094:	d
dense_16_276096:	,
batch_normalization_11_276100:	,
batch_normalization_11_276102:	,
batch_normalization_11_276104:	,
batch_normalization_11_276106:	"
dense_17_276109:	d
dense_17_276111:d+
batch_normalization_12_276115:d+
batch_normalization_12_276117:d+
batch_normalization_12_276119:d+
batch_normalization_12_276121:d!
dense_18_276124:d(
dense_18_276126:(+
batch_normalization_13_276130:(+
batch_normalization_13_276132:(+
batch_normalization_13_276134:(+
batch_normalization_13_276136:(!
dense_19_276139:(
dense_19_276141:
identity¢.batch_normalization_10/StatefulPartitionedCall¢.batch_normalization_11/StatefulPartitionedCall¢.batch_normalization_12/StatefulPartitionedCall¢.batch_normalization_13/StatefulPartitionedCall¢ dense_15/StatefulPartitionedCall¢ dense_16/StatefulPartitionedCall¢ dense_17/StatefulPartitionedCall¢ dense_18/StatefulPartitionedCall¢ dense_19/StatefulPartitionedCall¢"dropout_10/StatefulPartitionedCall¢!dropout_8/StatefulPartitionedCall¢!dropout_9/StatefulPartitionedCallè
.batch_normalization_10/StatefulPartitionedCallStatefulPartitionedCallinputsbatch_normalization_10_276080batch_normalization_10_276082batch_normalization_10_276084batch_normalization_10_276086*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_10_layer_call_and_return_conditional_losses_275437¡
 dense_15/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_10/StatefulPartitionedCall:output:0dense_15_276089dense_15_276091*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_15_layer_call_and_return_conditional_losses_275721
 dense_16/StatefulPartitionedCallStatefulPartitionedCall)dense_15/StatefulPartitionedCall:output:0dense_16_276094dense_16_276096*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_16_layer_call_and_return_conditional_losses_275738î
!dropout_8/StatefulPartitionedCallStatefulPartitionedCall)dense_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_8_layer_call_and_return_conditional_losses_275995
.batch_normalization_11/StatefulPartitionedCallStatefulPartitionedCall*dropout_8/StatefulPartitionedCall:output:0batch_normalization_11_276100batch_normalization_11_276102batch_normalization_11_276104batch_normalization_11_276106*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_11_layer_call_and_return_conditional_losses_275519¡
 dense_17/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_11/StatefulPartitionedCall:output:0dense_17_276109dense_17_276111*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_17_layer_call_and_return_conditional_losses_275771
!dropout_9/StatefulPartitionedCallStatefulPartitionedCall)dense_17/StatefulPartitionedCall:output:0"^dropout_8/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_9_layer_call_and_return_conditional_losses_275962
.batch_normalization_12/StatefulPartitionedCallStatefulPartitionedCall*dropout_9/StatefulPartitionedCall:output:0batch_normalization_12_276115batch_normalization_12_276117batch_normalization_12_276119batch_normalization_12_276121*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_12_layer_call_and_return_conditional_losses_275601¡
 dense_18/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_12/StatefulPartitionedCall:output:0dense_18_276124dense_18_276126*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_18_layer_call_and_return_conditional_losses_275804
"dropout_10/StatefulPartitionedCallStatefulPartitionedCall)dense_18/StatefulPartitionedCall:output:0"^dropout_9/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_10_layer_call_and_return_conditional_losses_275929
.batch_normalization_13/StatefulPartitionedCallStatefulPartitionedCall+dropout_10/StatefulPartitionedCall:output:0batch_normalization_13_276130batch_normalization_13_276132batch_normalization_13_276134batch_normalization_13_276136*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_275683¡
 dense_19/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_13/StatefulPartitionedCall:output:0dense_19_276139dense_19_276141*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_19_layer_call_and_return_conditional_losses_275837x
IdentityIdentity)dense_19/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
NoOpNoOp/^batch_normalization_10/StatefulPartitionedCall/^batch_normalization_11/StatefulPartitionedCall/^batch_normalization_12/StatefulPartitionedCall/^batch_normalization_13/StatefulPartitionedCall!^dense_15/StatefulPartitionedCall!^dense_16/StatefulPartitionedCall!^dense_17/StatefulPartitionedCall!^dense_18/StatefulPartitionedCall!^dense_19/StatefulPartitionedCall#^dropout_10/StatefulPartitionedCall"^dropout_8/StatefulPartitionedCall"^dropout_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_10/StatefulPartitionedCall.batch_normalization_10/StatefulPartitionedCall2`
.batch_normalization_11/StatefulPartitionedCall.batch_normalization_11/StatefulPartitionedCall2`
.batch_normalization_12/StatefulPartitionedCall.batch_normalization_12/StatefulPartitionedCall2`
.batch_normalization_13/StatefulPartitionedCall.batch_normalization_13/StatefulPartitionedCall2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall2D
 dense_16/StatefulPartitionedCall dense_16/StatefulPartitionedCall2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall2D
 dense_18/StatefulPartitionedCall dense_18/StatefulPartitionedCall2D
 dense_19/StatefulPartitionedCall dense_19/StatefulPartitionedCall2H
"dropout_10/StatefulPartitionedCall"dropout_10/StatefulPartitionedCall2F
!dropout_8/StatefulPartitionedCall!dropout_8/StatefulPartitionedCall2F
!dropout_9/StatefulPartitionedCall!dropout_9/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ä@
û
H__inference_sequential_3_layer_call_and_return_conditional_losses_275844

inputs+
batch_normalization_10_275701:+
batch_normalization_10_275703:+
batch_normalization_10_275705:+
batch_normalization_10_275707:!
dense_15_275722:d
dense_15_275724:d"
dense_16_275739:	d
dense_16_275741:	,
batch_normalization_11_275751:	,
batch_normalization_11_275753:	,
batch_normalization_11_275755:	,
batch_normalization_11_275757:	"
dense_17_275772:	d
dense_17_275774:d+
batch_normalization_12_275784:d+
batch_normalization_12_275786:d+
batch_normalization_12_275788:d+
batch_normalization_12_275790:d!
dense_18_275805:d(
dense_18_275807:(+
batch_normalization_13_275817:(+
batch_normalization_13_275819:(+
batch_normalization_13_275821:(+
batch_normalization_13_275823:(!
dense_19_275838:(
dense_19_275840:
identity¢.batch_normalization_10/StatefulPartitionedCall¢.batch_normalization_11/StatefulPartitionedCall¢.batch_normalization_12/StatefulPartitionedCall¢.batch_normalization_13/StatefulPartitionedCall¢ dense_15/StatefulPartitionedCall¢ dense_16/StatefulPartitionedCall¢ dense_17/StatefulPartitionedCall¢ dense_18/StatefulPartitionedCall¢ dense_19/StatefulPartitionedCallê
.batch_normalization_10/StatefulPartitionedCallStatefulPartitionedCallinputsbatch_normalization_10_275701batch_normalization_10_275703batch_normalization_10_275705batch_normalization_10_275707*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_10_layer_call_and_return_conditional_losses_275390¡
 dense_15/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_10/StatefulPartitionedCall:output:0dense_15_275722dense_15_275724*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_15_layer_call_and_return_conditional_losses_275721
 dense_16/StatefulPartitionedCallStatefulPartitionedCall)dense_15/StatefulPartitionedCall:output:0dense_16_275739dense_16_275741*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_16_layer_call_and_return_conditional_losses_275738Þ
dropout_8/PartitionedCallPartitionedCall)dense_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_8_layer_call_and_return_conditional_losses_275749
.batch_normalization_11/StatefulPartitionedCallStatefulPartitionedCall"dropout_8/PartitionedCall:output:0batch_normalization_11_275751batch_normalization_11_275753batch_normalization_11_275755batch_normalization_11_275757*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_11_layer_call_and_return_conditional_losses_275472¡
 dense_17/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_11/StatefulPartitionedCall:output:0dense_17_275772dense_17_275774*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_17_layer_call_and_return_conditional_losses_275771Ý
dropout_9/PartitionedCallPartitionedCall)dense_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dropout_9_layer_call_and_return_conditional_losses_275782
.batch_normalization_12/StatefulPartitionedCallStatefulPartitionedCall"dropout_9/PartitionedCall:output:0batch_normalization_12_275784batch_normalization_12_275786batch_normalization_12_275788batch_normalization_12_275790*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_12_layer_call_and_return_conditional_losses_275554¡
 dense_18/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_12/StatefulPartitionedCall:output:0dense_18_275805dense_18_275807*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_18_layer_call_and_return_conditional_losses_275804ß
dropout_10/PartitionedCallPartitionedCall)dense_18/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_10_layer_call_and_return_conditional_losses_275815
.batch_normalization_13/StatefulPartitionedCallStatefulPartitionedCall#dropout_10/PartitionedCall:output:0batch_normalization_13_275817batch_normalization_13_275819batch_normalization_13_275821batch_normalization_13_275823*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_275636¡
 dense_19/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_13/StatefulPartitionedCall:output:0dense_19_275838dense_19_275840*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_19_layer_call_and_return_conditional_losses_275837x
IdentityIdentity)dense_19/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¹
NoOpNoOp/^batch_normalization_10/StatefulPartitionedCall/^batch_normalization_11/StatefulPartitionedCall/^batch_normalization_12/StatefulPartitionedCall/^batch_normalization_13/StatefulPartitionedCall!^dense_15/StatefulPartitionedCall!^dense_16/StatefulPartitionedCall!^dense_17/StatefulPartitionedCall!^dense_18/StatefulPartitionedCall!^dense_19/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : 2`
.batch_normalization_10/StatefulPartitionedCall.batch_normalization_10/StatefulPartitionedCall2`
.batch_normalization_11/StatefulPartitionedCall.batch_normalization_11/StatefulPartitionedCall2`
.batch_normalization_12/StatefulPartitionedCall.batch_normalization_12/StatefulPartitionedCall2`
.batch_normalization_13/StatefulPartitionedCall.batch_normalization_13/StatefulPartitionedCall2D
 dense_15/StatefulPartitionedCall dense_15/StatefulPartitionedCall2D
 dense_16/StatefulPartitionedCall dense_16/StatefulPartitionedCall2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall2D
 dense_18/StatefulPartitionedCall dense_18/StatefulPartitionedCall2D
 dense_19/StatefulPartitionedCall dense_19/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¿

-__inference_sequential_3_layer_call_fn_276456

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:d
	unknown_4:d
	unknown_5:	d
	unknown_6:	
	unknown_7:	
	unknown_8:	
	unknown_9:	

unknown_10:	

unknown_11:	d

unknown_12:d

unknown_13:d

unknown_14:d

unknown_15:d

unknown_16:d

unknown_17:d(

unknown_18:(

unknown_19:(

unknown_20:(

unknown_21:(

unknown_22:(

unknown_23:(

unknown_24:
identity¢StatefulPartitionedCall¤
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_24*&
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*<
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_3_layer_call_and_return_conditional_losses_275844o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
÷
Ü
H__inference_sequential_3_layer_call_and_return_conditional_losses_276619

inputsF
8batch_normalization_10_batchnorm_readvariableop_resource:J
<batch_normalization_10_batchnorm_mul_readvariableop_resource:H
:batch_normalization_10_batchnorm_readvariableop_1_resource:H
:batch_normalization_10_batchnorm_readvariableop_2_resource:9
'dense_15_matmul_readvariableop_resource:d6
(dense_15_biasadd_readvariableop_resource:d:
'dense_16_matmul_readvariableop_resource:	d7
(dense_16_biasadd_readvariableop_resource:	G
8batch_normalization_11_batchnorm_readvariableop_resource:	K
<batch_normalization_11_batchnorm_mul_readvariableop_resource:	I
:batch_normalization_11_batchnorm_readvariableop_1_resource:	I
:batch_normalization_11_batchnorm_readvariableop_2_resource:	:
'dense_17_matmul_readvariableop_resource:	d6
(dense_17_biasadd_readvariableop_resource:dF
8batch_normalization_12_batchnorm_readvariableop_resource:dJ
<batch_normalization_12_batchnorm_mul_readvariableop_resource:dH
:batch_normalization_12_batchnorm_readvariableop_1_resource:dH
:batch_normalization_12_batchnorm_readvariableop_2_resource:d9
'dense_18_matmul_readvariableop_resource:d(6
(dense_18_biasadd_readvariableop_resource:(F
8batch_normalization_13_batchnorm_readvariableop_resource:(J
<batch_normalization_13_batchnorm_mul_readvariableop_resource:(H
:batch_normalization_13_batchnorm_readvariableop_1_resource:(H
:batch_normalization_13_batchnorm_readvariableop_2_resource:(9
'dense_19_matmul_readvariableop_resource:(6
(dense_19_biasadd_readvariableop_resource:
identity¢/batch_normalization_10/batchnorm/ReadVariableOp¢1batch_normalization_10/batchnorm/ReadVariableOp_1¢1batch_normalization_10/batchnorm/ReadVariableOp_2¢3batch_normalization_10/batchnorm/mul/ReadVariableOp¢/batch_normalization_11/batchnorm/ReadVariableOp¢1batch_normalization_11/batchnorm/ReadVariableOp_1¢1batch_normalization_11/batchnorm/ReadVariableOp_2¢3batch_normalization_11/batchnorm/mul/ReadVariableOp¢/batch_normalization_12/batchnorm/ReadVariableOp¢1batch_normalization_12/batchnorm/ReadVariableOp_1¢1batch_normalization_12/batchnorm/ReadVariableOp_2¢3batch_normalization_12/batchnorm/mul/ReadVariableOp¢/batch_normalization_13/batchnorm/ReadVariableOp¢1batch_normalization_13/batchnorm/ReadVariableOp_1¢1batch_normalization_13/batchnorm/ReadVariableOp_2¢3batch_normalization_13/batchnorm/mul/ReadVariableOp¢dense_15/BiasAdd/ReadVariableOp¢dense_15/MatMul/ReadVariableOp¢dense_16/BiasAdd/ReadVariableOp¢dense_16/MatMul/ReadVariableOp¢dense_17/BiasAdd/ReadVariableOp¢dense_17/MatMul/ReadVariableOp¢dense_18/BiasAdd/ReadVariableOp¢dense_18/MatMul/ReadVariableOp¢dense_19/BiasAdd/ReadVariableOp¢dense_19/MatMul/ReadVariableOp¤
/batch_normalization_10/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_10_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0k
&batch_normalization_10/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:¼
$batch_normalization_10/batchnorm/addAddV27batch_normalization_10/batchnorm/ReadVariableOp:value:0/batch_normalization_10/batchnorm/add/y:output:0*
T0*
_output_shapes
:~
&batch_normalization_10/batchnorm/RsqrtRsqrt(batch_normalization_10/batchnorm/add:z:0*
T0*
_output_shapes
:¬
3batch_normalization_10/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_10_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0¹
$batch_normalization_10/batchnorm/mulMul*batch_normalization_10/batchnorm/Rsqrt:y:0;batch_normalization_10/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:
&batch_normalization_10/batchnorm/mul_1Mulinputs(batch_normalization_10/batchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¨
1batch_normalization_10/batchnorm/ReadVariableOp_1ReadVariableOp:batch_normalization_10_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0·
&batch_normalization_10/batchnorm/mul_2Mul9batch_normalization_10/batchnorm/ReadVariableOp_1:value:0(batch_normalization_10/batchnorm/mul:z:0*
T0*
_output_shapes
:¨
1batch_normalization_10/batchnorm/ReadVariableOp_2ReadVariableOp:batch_normalization_10_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0·
$batch_normalization_10/batchnorm/subSub9batch_normalization_10/batchnorm/ReadVariableOp_2:value:0*batch_normalization_10/batchnorm/mul_2:z:0*
T0*
_output_shapes
:·
&batch_normalization_10/batchnorm/add_1AddV2*batch_normalization_10/batchnorm/mul_1:z:0(batch_normalization_10/batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_15/MatMul/ReadVariableOpReadVariableOp'dense_15_matmul_readvariableop_resource*
_output_shapes

:d*
dtype0
dense_15/MatMulMatMul*batch_normalization_10/batchnorm/add_1:z:0&dense_15/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
dense_15/BiasAdd/ReadVariableOpReadVariableOp(dense_15_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0
dense_15/BiasAddBiasAdddense_15/MatMul:product:0'dense_15/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdb
dense_15/ReluReludense_15/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
dense_16/MatMul/ReadVariableOpReadVariableOp'dense_16_matmul_readvariableop_resource*
_output_shapes
:	d*
dtype0
dense_16/MatMulMatMuldense_15/Relu:activations:0&dense_16/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_16/BiasAdd/ReadVariableOpReadVariableOp(dense_16_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_16/BiasAddBiasAdddense_16/MatMul:product:0'dense_16/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
dense_16/ReluReludense_16/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
dropout_8/IdentityIdentitydense_16/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¥
/batch_normalization_11/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_11_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0k
&batch_normalization_11/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:½
$batch_normalization_11/batchnorm/addAddV27batch_normalization_11/batchnorm/ReadVariableOp:value:0/batch_normalization_11/batchnorm/add/y:output:0*
T0*
_output_shapes	
:
&batch_normalization_11/batchnorm/RsqrtRsqrt(batch_normalization_11/batchnorm/add:z:0*
T0*
_output_shapes	
:­
3batch_normalization_11/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_11_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0º
$batch_normalization_11/batchnorm/mulMul*batch_normalization_11/batchnorm/Rsqrt:y:0;batch_normalization_11/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:§
&batch_normalization_11/batchnorm/mul_1Muldropout_8/Identity:output:0(batch_normalization_11/batchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ©
1batch_normalization_11/batchnorm/ReadVariableOp_1ReadVariableOp:batch_normalization_11_batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype0¸
&batch_normalization_11/batchnorm/mul_2Mul9batch_normalization_11/batchnorm/ReadVariableOp_1:value:0(batch_normalization_11/batchnorm/mul:z:0*
T0*
_output_shapes	
:©
1batch_normalization_11/batchnorm/ReadVariableOp_2ReadVariableOp:batch_normalization_11_batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype0¸
$batch_normalization_11/batchnorm/subSub9batch_normalization_11/batchnorm/ReadVariableOp_2:value:0*batch_normalization_11/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:¸
&batch_normalization_11/batchnorm/add_1AddV2*batch_normalization_11/batchnorm/mul_1:z:0(batch_normalization_11/batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_17/MatMul/ReadVariableOpReadVariableOp'dense_17_matmul_readvariableop_resource*
_output_shapes
:	d*
dtype0
dense_17/MatMulMatMul*batch_normalization_11/batchnorm/add_1:z:0&dense_17/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
dense_17/BiasAdd/ReadVariableOpReadVariableOp(dense_17_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0
dense_17/BiasAddBiasAdddense_17/MatMul:product:0'dense_17/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdb
dense_17/ReluReludense_17/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdm
dropout_9/IdentityIdentitydense_17/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¤
/batch_normalization_12/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_12_batchnorm_readvariableop_resource*
_output_shapes
:d*
dtype0k
&batch_normalization_12/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:¼
$batch_normalization_12/batchnorm/addAddV27batch_normalization_12/batchnorm/ReadVariableOp:value:0/batch_normalization_12/batchnorm/add/y:output:0*
T0*
_output_shapes
:d~
&batch_normalization_12/batchnorm/RsqrtRsqrt(batch_normalization_12/batchnorm/add:z:0*
T0*
_output_shapes
:d¬
3batch_normalization_12/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_12_batchnorm_mul_readvariableop_resource*
_output_shapes
:d*
dtype0¹
$batch_normalization_12/batchnorm/mulMul*batch_normalization_12/batchnorm/Rsqrt:y:0;batch_normalization_12/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:d¦
&batch_normalization_12/batchnorm/mul_1Muldropout_9/Identity:output:0(batch_normalization_12/batchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd¨
1batch_normalization_12/batchnorm/ReadVariableOp_1ReadVariableOp:batch_normalization_12_batchnorm_readvariableop_1_resource*
_output_shapes
:d*
dtype0·
&batch_normalization_12/batchnorm/mul_2Mul9batch_normalization_12/batchnorm/ReadVariableOp_1:value:0(batch_normalization_12/batchnorm/mul:z:0*
T0*
_output_shapes
:d¨
1batch_normalization_12/batchnorm/ReadVariableOp_2ReadVariableOp:batch_normalization_12_batchnorm_readvariableop_2_resource*
_output_shapes
:d*
dtype0·
$batch_normalization_12/batchnorm/subSub9batch_normalization_12/batchnorm/ReadVariableOp_2:value:0*batch_normalization_12/batchnorm/mul_2:z:0*
T0*
_output_shapes
:d·
&batch_normalization_12/batchnorm/add_1AddV2*batch_normalization_12/batchnorm/mul_1:z:0(batch_normalization_12/batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
dense_18/MatMul/ReadVariableOpReadVariableOp'dense_18_matmul_readvariableop_resource*
_output_shapes

:d(*
dtype0
dense_18/MatMulMatMul*batch_normalization_12/batchnorm/add_1:z:0&dense_18/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
dense_18/BiasAdd/ReadVariableOpReadVariableOp(dense_18_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
dense_18/BiasAddBiasAdddense_18/MatMul:product:0'dense_18/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(b
dense_18/ReluReludense_18/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(n
dropout_10/IdentityIdentitydense_18/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(¤
/batch_normalization_13/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_13_batchnorm_readvariableop_resource*
_output_shapes
:(*
dtype0k
&batch_normalization_13/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:¼
$batch_normalization_13/batchnorm/addAddV27batch_normalization_13/batchnorm/ReadVariableOp:value:0/batch_normalization_13/batchnorm/add/y:output:0*
T0*
_output_shapes
:(~
&batch_normalization_13/batchnorm/RsqrtRsqrt(batch_normalization_13/batchnorm/add:z:0*
T0*
_output_shapes
:(¬
3batch_normalization_13/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_13_batchnorm_mul_readvariableop_resource*
_output_shapes
:(*
dtype0¹
$batch_normalization_13/batchnorm/mulMul*batch_normalization_13/batchnorm/Rsqrt:y:0;batch_normalization_13/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:(§
&batch_normalization_13/batchnorm/mul_1Muldropout_10/Identity:output:0(batch_normalization_13/batchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(¨
1batch_normalization_13/batchnorm/ReadVariableOp_1ReadVariableOp:batch_normalization_13_batchnorm_readvariableop_1_resource*
_output_shapes
:(*
dtype0·
&batch_normalization_13/batchnorm/mul_2Mul9batch_normalization_13/batchnorm/ReadVariableOp_1:value:0(batch_normalization_13/batchnorm/mul:z:0*
T0*
_output_shapes
:(¨
1batch_normalization_13/batchnorm/ReadVariableOp_2ReadVariableOp:batch_normalization_13_batchnorm_readvariableop_2_resource*
_output_shapes
:(*
dtype0·
$batch_normalization_13/batchnorm/subSub9batch_normalization_13/batchnorm/ReadVariableOp_2:value:0*batch_normalization_13/batchnorm/mul_2:z:0*
T0*
_output_shapes
:(·
&batch_normalization_13/batchnorm/add_1AddV2*batch_normalization_13/batchnorm/mul_1:z:0(batch_normalization_13/batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
dense_19/MatMul/ReadVariableOpReadVariableOp'dense_19_matmul_readvariableop_resource*
_output_shapes

:(*
dtype0
dense_19/MatMulMatMul*batch_normalization_13/batchnorm/add_1:z:0&dense_19/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_19/BiasAdd/ReadVariableOpReadVariableOp(dense_19_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_19/BiasAddBiasAdddense_19/MatMul:product:0'dense_19/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
dense_19/SoftmaxSoftmaxdense_19/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
IdentityIdentitydense_19/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÕ	
NoOpNoOp0^batch_normalization_10/batchnorm/ReadVariableOp2^batch_normalization_10/batchnorm/ReadVariableOp_12^batch_normalization_10/batchnorm/ReadVariableOp_24^batch_normalization_10/batchnorm/mul/ReadVariableOp0^batch_normalization_11/batchnorm/ReadVariableOp2^batch_normalization_11/batchnorm/ReadVariableOp_12^batch_normalization_11/batchnorm/ReadVariableOp_24^batch_normalization_11/batchnorm/mul/ReadVariableOp0^batch_normalization_12/batchnorm/ReadVariableOp2^batch_normalization_12/batchnorm/ReadVariableOp_12^batch_normalization_12/batchnorm/ReadVariableOp_24^batch_normalization_12/batchnorm/mul/ReadVariableOp0^batch_normalization_13/batchnorm/ReadVariableOp2^batch_normalization_13/batchnorm/ReadVariableOp_12^batch_normalization_13/batchnorm/ReadVariableOp_24^batch_normalization_13/batchnorm/mul/ReadVariableOp ^dense_15/BiasAdd/ReadVariableOp^dense_15/MatMul/ReadVariableOp ^dense_16/BiasAdd/ReadVariableOp^dense_16/MatMul/ReadVariableOp ^dense_17/BiasAdd/ReadVariableOp^dense_17/MatMul/ReadVariableOp ^dense_18/BiasAdd/ReadVariableOp^dense_18/MatMul/ReadVariableOp ^dense_19/BiasAdd/ReadVariableOp^dense_19/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : 2b
/batch_normalization_10/batchnorm/ReadVariableOp/batch_normalization_10/batchnorm/ReadVariableOp2f
1batch_normalization_10/batchnorm/ReadVariableOp_11batch_normalization_10/batchnorm/ReadVariableOp_12f
1batch_normalization_10/batchnorm/ReadVariableOp_21batch_normalization_10/batchnorm/ReadVariableOp_22j
3batch_normalization_10/batchnorm/mul/ReadVariableOp3batch_normalization_10/batchnorm/mul/ReadVariableOp2b
/batch_normalization_11/batchnorm/ReadVariableOp/batch_normalization_11/batchnorm/ReadVariableOp2f
1batch_normalization_11/batchnorm/ReadVariableOp_11batch_normalization_11/batchnorm/ReadVariableOp_12f
1batch_normalization_11/batchnorm/ReadVariableOp_21batch_normalization_11/batchnorm/ReadVariableOp_22j
3batch_normalization_11/batchnorm/mul/ReadVariableOp3batch_normalization_11/batchnorm/mul/ReadVariableOp2b
/batch_normalization_12/batchnorm/ReadVariableOp/batch_normalization_12/batchnorm/ReadVariableOp2f
1batch_normalization_12/batchnorm/ReadVariableOp_11batch_normalization_12/batchnorm/ReadVariableOp_12f
1batch_normalization_12/batchnorm/ReadVariableOp_21batch_normalization_12/batchnorm/ReadVariableOp_22j
3batch_normalization_12/batchnorm/mul/ReadVariableOp3batch_normalization_12/batchnorm/mul/ReadVariableOp2b
/batch_normalization_13/batchnorm/ReadVariableOp/batch_normalization_13/batchnorm/ReadVariableOp2f
1batch_normalization_13/batchnorm/ReadVariableOp_11batch_normalization_13/batchnorm/ReadVariableOp_12f
1batch_normalization_13/batchnorm/ReadVariableOp_21batch_normalization_13/batchnorm/ReadVariableOp_22j
3batch_normalization_13/batchnorm/mul/ReadVariableOp3batch_normalization_13/batchnorm/mul/ReadVariableOp2B
dense_15/BiasAdd/ReadVariableOpdense_15/BiasAdd/ReadVariableOp2@
dense_15/MatMul/ReadVariableOpdense_15/MatMul/ReadVariableOp2B
dense_16/BiasAdd/ReadVariableOpdense_16/BiasAdd/ReadVariableOp2@
dense_16/MatMul/ReadVariableOpdense_16/MatMul/ReadVariableOp2B
dense_17/BiasAdd/ReadVariableOpdense_17/BiasAdd/ReadVariableOp2@
dense_17/MatMul/ReadVariableOpdense_17/MatMul/ReadVariableOp2B
dense_18/BiasAdd/ReadVariableOpdense_18/BiasAdd/ReadVariableOp2@
dense_18/MatMul/ReadVariableOpdense_18/MatMul/ReadVariableOp2B
dense_19/BiasAdd/ReadVariableOpdense_19/BiasAdd/ReadVariableOp2@
dense_19/MatMul/ReadVariableOpdense_19/MatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

®
-__inference_sequential_3_layer_call_fn_275899 
batch_normalization_10_input
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
	unknown_3:d
	unknown_4:d
	unknown_5:	d
	unknown_6:	
	unknown_7:	
	unknown_8:	
	unknown_9:	

unknown_10:	

unknown_11:	d

unknown_12:d

unknown_13:d

unknown_14:d

unknown_15:d

unknown_16:d

unknown_17:d(

unknown_18:(

unknown_19:(

unknown_20:(

unknown_21:(

unknown_22:(

unknown_23:(

unknown_24:
identity¢StatefulPartitionedCallº
StatefulPartitionedCallStatefulPartitionedCallbatch_normalization_10_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
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
unknown_24*&
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*<
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_3_layer_call_and_return_conditional_losses_275844o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Z
_input_shapesI
G:ÿÿÿÿÿÿÿÿÿ: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
6
_user_specified_namebatch_normalization_10_input
ô	
e
F__inference_dropout_10_layer_call_and_return_conditional_losses_277262

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>¦
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(Y
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ("
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ(:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
 
_user_specified_nameinputs
ó	
d
E__inference_dropout_9_layer_call_and_return_conditional_losses_277135

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *nÛ¶?d
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *>¦
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdo
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdi
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿdY
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿd:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
ó
d
+__inference_dropout_10_layer_call_fn_277245

inputs
identity¢StatefulPartitionedCallÁ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_dropout_10_layer_call_and_return_conditional_losses_275929o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ(22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
 
_user_specified_nameinputs


õ
D__inference_dense_18_layer_call_and_return_conditional_losses_277235

inputs0
matmul_readvariableop_resource:d(-
biasadd_readvariableop_resource:(
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:d(*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿd: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
Ø
c
E__inference_dropout_9_layer_call_and_return_conditional_losses_275782

inputs

identity_1N
IdentityIdentityinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd[

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿd:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
 
_user_specified_nameinputs
¨
Ò
7__inference_batch_normalization_13_layer_call_fn_277288

inputs
unknown:(
	unknown_0:(
	unknown_1:(
	unknown_2:(
identity¢StatefulPartitionedCallÿ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *[
fVRT
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_275683o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ(: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
 
_user_specified_nameinputs
ú
.
"__inference__traced_restore_277821
file_prefix;
-assignvariableop_batch_normalization_10_gamma:<
.assignvariableop_1_batch_normalization_10_beta:C
5assignvariableop_2_batch_normalization_10_moving_mean:G
9assignvariableop_3_batch_normalization_10_moving_variance:4
"assignvariableop_4_dense_15_kernel:d.
 assignvariableop_5_dense_15_bias:d5
"assignvariableop_6_dense_16_kernel:	d/
 assignvariableop_7_dense_16_bias:	>
/assignvariableop_8_batch_normalization_11_gamma:	=
.assignvariableop_9_batch_normalization_11_beta:	E
6assignvariableop_10_batch_normalization_11_moving_mean:	I
:assignvariableop_11_batch_normalization_11_moving_variance:	6
#assignvariableop_12_dense_17_kernel:	d/
!assignvariableop_13_dense_17_bias:d>
0assignvariableop_14_batch_normalization_12_gamma:d=
/assignvariableop_15_batch_normalization_12_beta:dD
6assignvariableop_16_batch_normalization_12_moving_mean:dH
:assignvariableop_17_batch_normalization_12_moving_variance:d5
#assignvariableop_18_dense_18_kernel:d(/
!assignvariableop_19_dense_18_bias:(>
0assignvariableop_20_batch_normalization_13_gamma:(=
/assignvariableop_21_batch_normalization_13_beta:(D
6assignvariableop_22_batch_normalization_13_moving_mean:(H
:assignvariableop_23_batch_normalization_13_moving_variance:(5
#assignvariableop_24_dense_19_kernel:(/
!assignvariableop_25_dense_19_bias:'
assignvariableop_26_adam_iter:	 )
assignvariableop_27_adam_beta_1: )
assignvariableop_28_adam_beta_2: (
assignvariableop_29_adam_decay: 0
&assignvariableop_30_adam_learning_rate: #
assignvariableop_31_total: #
assignvariableop_32_count: %
assignvariableop_33_total_1: %
assignvariableop_34_count_1: E
7assignvariableop_35_adam_batch_normalization_10_gamma_m:D
6assignvariableop_36_adam_batch_normalization_10_beta_m:<
*assignvariableop_37_adam_dense_15_kernel_m:d6
(assignvariableop_38_adam_dense_15_bias_m:d=
*assignvariableop_39_adam_dense_16_kernel_m:	d7
(assignvariableop_40_adam_dense_16_bias_m:	F
7assignvariableop_41_adam_batch_normalization_11_gamma_m:	E
6assignvariableop_42_adam_batch_normalization_11_beta_m:	=
*assignvariableop_43_adam_dense_17_kernel_m:	d6
(assignvariableop_44_adam_dense_17_bias_m:dE
7assignvariableop_45_adam_batch_normalization_12_gamma_m:dD
6assignvariableop_46_adam_batch_normalization_12_beta_m:d<
*assignvariableop_47_adam_dense_18_kernel_m:d(6
(assignvariableop_48_adam_dense_18_bias_m:(E
7assignvariableop_49_adam_batch_normalization_13_gamma_m:(D
6assignvariableop_50_adam_batch_normalization_13_beta_m:(<
*assignvariableop_51_adam_dense_19_kernel_m:(6
(assignvariableop_52_adam_dense_19_bias_m:E
7assignvariableop_53_adam_batch_normalization_10_gamma_v:D
6assignvariableop_54_adam_batch_normalization_10_beta_v:<
*assignvariableop_55_adam_dense_15_kernel_v:d6
(assignvariableop_56_adam_dense_15_bias_v:d=
*assignvariableop_57_adam_dense_16_kernel_v:	d7
(assignvariableop_58_adam_dense_16_bias_v:	F
7assignvariableop_59_adam_batch_normalization_11_gamma_v:	E
6assignvariableop_60_adam_batch_normalization_11_beta_v:	=
*assignvariableop_61_adam_dense_17_kernel_v:	d6
(assignvariableop_62_adam_dense_17_bias_v:dE
7assignvariableop_63_adam_batch_normalization_12_gamma_v:dD
6assignvariableop_64_adam_batch_normalization_12_beta_v:d<
*assignvariableop_65_adam_dense_18_kernel_v:d(6
(assignvariableop_66_adam_dense_18_bias_v:(E
7assignvariableop_67_adam_batch_normalization_13_gamma_v:(D
6assignvariableop_68_adam_batch_normalization_13_beta_v:(<
*assignvariableop_69_adam_dense_19_kernel_v:(6
(assignvariableop_70_adam_dense_19_bias_v:
identity_72¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_33¢AssignVariableOp_34¢AssignVariableOp_35¢AssignVariableOp_36¢AssignVariableOp_37¢AssignVariableOp_38¢AssignVariableOp_39¢AssignVariableOp_4¢AssignVariableOp_40¢AssignVariableOp_41¢AssignVariableOp_42¢AssignVariableOp_43¢AssignVariableOp_44¢AssignVariableOp_45¢AssignVariableOp_46¢AssignVariableOp_47¢AssignVariableOp_48¢AssignVariableOp_49¢AssignVariableOp_5¢AssignVariableOp_50¢AssignVariableOp_51¢AssignVariableOp_52¢AssignVariableOp_53¢AssignVariableOp_54¢AssignVariableOp_55¢AssignVariableOp_56¢AssignVariableOp_57¢AssignVariableOp_58¢AssignVariableOp_59¢AssignVariableOp_6¢AssignVariableOp_60¢AssignVariableOp_61¢AssignVariableOp_62¢AssignVariableOp_63¢AssignVariableOp_64¢AssignVariableOp_65¢AssignVariableOp_66¢AssignVariableOp_67¢AssignVariableOp_68¢AssignVariableOp_69¢AssignVariableOp_7¢AssignVariableOp_70¢AssignVariableOp_8¢AssignVariableOp_9À'
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:H*
dtype0*æ&
valueÜ&BÙ&HB5layer_with_weights-0/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-0/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-0/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-0/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-5/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:H*
dtype0*¥
valueBHB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*¶
_output_shapes£
 ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*V
dtypesL
J2H	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp-assignvariableop_batch_normalization_10_gammaIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp.assignvariableop_1_batch_normalization_10_betaIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:¤
AssignVariableOp_2AssignVariableOp5assignvariableop_2_batch_normalization_10_moving_meanIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_3AssignVariableOp9assignvariableop_3_batch_normalization_10_moving_varianceIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_15_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_15_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_16_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_16_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOp/assignvariableop_8_batch_normalization_11_gammaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOp.assignvariableop_9_batch_normalization_11_betaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_10AssignVariableOp6assignvariableop_10_batch_normalization_11_moving_meanIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:«
AssignVariableOp_11AssignVariableOp:assignvariableop_11_batch_normalization_11_moving_varianceIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOp#assignvariableop_12_dense_17_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOp!assignvariableop_13_dense_17_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:¡
AssignVariableOp_14AssignVariableOp0assignvariableop_14_batch_normalization_12_gammaIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_15AssignVariableOp/assignvariableop_15_batch_normalization_12_betaIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_16AssignVariableOp6assignvariableop_16_batch_normalization_12_moving_meanIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:«
AssignVariableOp_17AssignVariableOp:assignvariableop_17_batch_normalization_12_moving_varianceIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOp#assignvariableop_18_dense_18_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOp!assignvariableop_19_dense_18_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:¡
AssignVariableOp_20AssignVariableOp0assignvariableop_20_batch_normalization_13_gammaIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
: 
AssignVariableOp_21AssignVariableOp/assignvariableop_21_batch_normalization_13_betaIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_22AssignVariableOp6assignvariableop_22_batch_normalization_13_moving_meanIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:«
AssignVariableOp_23AssignVariableOp:assignvariableop_23_batch_normalization_13_moving_varianceIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_24AssignVariableOp#assignvariableop_24_dense_19_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_25AssignVariableOp!assignvariableop_25_dense_19_biasIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_26AssignVariableOpassignvariableop_26_adam_iterIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_27AssignVariableOpassignvariableop_27_adam_beta_1Identity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_28AssignVariableOpassignvariableop_28_adam_beta_2Identity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_29AssignVariableOpassignvariableop_29_adam_decayIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_30AssignVariableOp&assignvariableop_30_adam_learning_rateIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_31AssignVariableOpassignvariableop_31_totalIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_32AssignVariableOpassignvariableop_32_countIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_33AssignVariableOpassignvariableop_33_total_1Identity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_34AssignVariableOpassignvariableop_34_count_1Identity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_35AssignVariableOp7assignvariableop_35_adam_batch_normalization_10_gamma_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_batch_normalization_10_beta_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_37AssignVariableOp*assignvariableop_37_adam_dense_15_kernel_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_38AssignVariableOp(assignvariableop_38_adam_dense_15_bias_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_39AssignVariableOp*assignvariableop_39_adam_dense_16_kernel_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_40AssignVariableOp(assignvariableop_40_adam_dense_16_bias_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_41AssignVariableOp7assignvariableop_41_adam_batch_normalization_11_gamma_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_42AssignVariableOp6assignvariableop_42_adam_batch_normalization_11_beta_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_43AssignVariableOp*assignvariableop_43_adam_dense_17_kernel_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_44AssignVariableOp(assignvariableop_44_adam_dense_17_bias_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_45AssignVariableOp7assignvariableop_45_adam_batch_normalization_12_gamma_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_46AssignVariableOp6assignvariableop_46_adam_batch_normalization_12_beta_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_47AssignVariableOp*assignvariableop_47_adam_dense_18_kernel_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_48AssignVariableOp(assignvariableop_48_adam_dense_18_bias_mIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_49AssignVariableOp7assignvariableop_49_adam_batch_normalization_13_gamma_mIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_50AssignVariableOp6assignvariableop_50_adam_batch_normalization_13_beta_mIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_51AssignVariableOp*assignvariableop_51_adam_dense_19_kernel_mIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_52AssignVariableOp(assignvariableop_52_adam_dense_19_bias_mIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_53AssignVariableOp7assignvariableop_53_adam_batch_normalization_10_gamma_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_54AssignVariableOp6assignvariableop_54_adam_batch_normalization_10_beta_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_55AssignVariableOp*assignvariableop_55_adam_dense_15_kernel_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_56AssignVariableOp(assignvariableop_56_adam_dense_15_bias_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_57AssignVariableOp*assignvariableop_57_adam_dense_16_kernel_vIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_58AssignVariableOp(assignvariableop_58_adam_dense_16_bias_vIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_59AssignVariableOp7assignvariableop_59_adam_batch_normalization_11_gamma_vIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_60AssignVariableOp6assignvariableop_60_adam_batch_normalization_11_beta_vIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_61AssignVariableOp*assignvariableop_61_adam_dense_17_kernel_vIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_62AssignVariableOp(assignvariableop_62_adam_dense_17_bias_vIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_63AssignVariableOp7assignvariableop_63_adam_batch_normalization_12_gamma_vIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_64AssignVariableOp6assignvariableop_64_adam_batch_normalization_12_beta_vIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_65AssignVariableOp*assignvariableop_65_adam_dense_18_kernel_vIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_66AssignVariableOp(assignvariableop_66_adam_dense_18_bias_vIdentity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_67AssignVariableOp7assignvariableop_67_adam_batch_normalization_13_gamma_vIdentity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_68AssignVariableOp6assignvariableop_68_adam_batch_normalization_13_beta_vIdentity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_69AssignVariableOp*assignvariableop_69_adam_dense_19_kernel_vIdentity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_70AssignVariableOp(assignvariableop_70_adam_dense_19_bias_vIdentity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 é
Identity_71Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_72IdentityIdentity_71:output:0^NoOp_1*
T0*
_output_shapes
: Ö
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_72Identity_72:output:0*¥
_input_shapes
: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
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
AssignVariableOp_70AssignVariableOp_702(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Â

)__inference_dense_19_layer_call_fn_277351

inputs
unknown:(
	unknown_0:
identity¢StatefulPartitionedCallÙ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_19_layer_call_and_return_conditional_losses_275837o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ(: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
 
_user_specified_nameinputs
%
ë
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_277342

inputs5
'assignmovingavg_readvariableop_resource:(7
)assignmovingavg_1_readvariableop_resource:(3
%batchnorm_mul_readvariableop_resource:(/
!batchnorm_readvariableop_resource:(
identity¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:(*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:(
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(l
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:(*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:(*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:(*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:(*
dtype0
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:(x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:(¬
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:(*
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:(~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:(´
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:(P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:(~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:(*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:(c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:(v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:(*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:(r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(b
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(ê
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ(: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ(
 
_user_specified_nameinputs
%
ë
R__inference_batch_normalization_10_layer_call_and_return_conditional_losses_275437

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(d
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:*
	keep_dims(m
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:*
squeeze_dims
 s
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:¬
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:´
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:c
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:r
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿê
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
°%
ï
R__inference_batch_normalization_11_layer_call_and_return_conditional_losses_275519

inputs6
'assignmovingavg_readvariableop_resource:	8
)assignmovingavg_1_readvariableop_resource:	4
%batchnorm_mul_readvariableop_resource:	0
!batchnorm_readvariableop_resource:	
identity¢AssignMovingAvg¢AssignMovingAvg/ReadVariableOp¢AssignMovingAvg_1¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOph
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(e
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿl
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(n
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 t
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:*
dtype0
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:y
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:¬
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:*
dtype0
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:´
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:r
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:w
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype0q
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿê
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs"ÛL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Õ
serving_defaultÁ
e
batch_normalization_10_inputE
.serving_default_batch_normalization_10_input:0ÿÿÿÿÿÿÿÿÿ<
dense_190
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:ö
î
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
layer-6
layer_with_weights-5
layer-7
	layer_with_weights-6
	layer-8

layer-9
layer_with_weights-7
layer-10
layer_with_weights-8
layer-11
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_sequential
ê
axis
	gamma
beta
moving_mean
moving_variance
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses"
_tf_keras_layer
»

!kernel
"bias
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses"
_tf_keras_layer
»

)kernel
*bias
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses"
_tf_keras_layer
¼
1	variables
2trainable_variables
3regularization_losses
4	keras_api
5_random_generator
6__call__
*7&call_and_return_all_conditional_losses"
_tf_keras_layer
ê
8axis
	9gamma
:beta
;moving_mean
<moving_variance
=	variables
>trainable_variables
?regularization_losses
@	keras_api
A__call__
*B&call_and_return_all_conditional_losses"
_tf_keras_layer
»

Ckernel
Dbias
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
I__call__
*J&call_and_return_all_conditional_losses"
_tf_keras_layer
¼
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
O_random_generator
P__call__
*Q&call_and_return_all_conditional_losses"
_tf_keras_layer
ê
Raxis
	Sgamma
Tbeta
Umoving_mean
Vmoving_variance
W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api
[__call__
*\&call_and_return_all_conditional_losses"
_tf_keras_layer
»

]kernel
^bias
_	variables
`trainable_variables
aregularization_losses
b	keras_api
c__call__
*d&call_and_return_all_conditional_losses"
_tf_keras_layer
¼
e	variables
ftrainable_variables
gregularization_losses
h	keras_api
i_random_generator
j__call__
*k&call_and_return_all_conditional_losses"
_tf_keras_layer
ê
laxis
	mgamma
nbeta
omoving_mean
pmoving_variance
q	variables
rtrainable_variables
sregularization_losses
t	keras_api
u__call__
*v&call_and_return_all_conditional_losses"
_tf_keras_layer
»

wkernel
xbias
y	variables
ztrainable_variables
{regularization_losses
|	keras_api
}__call__
*~&call_and_return_all_conditional_losses"
_tf_keras_layer
¿
iter
beta_1
beta_2

decay
learning_ratemÑmÒ!mÓ"mÔ)mÕ*mÖ9m×:mØCmÙDmÚSmÛTmÜ]mÝ^mÞmmßnmàwmáxmâvãvä!vå"væ)vç*vè9vé:vêCvëDvìSvíTvî]vï^vðmvñnvòwvóxvô"
	optimizer
æ
0
1
2
3
!4
"5
)6
*7
98
:9
;10
<11
C12
D13
S14
T15
U16
V17
]18
^19
m20
n21
o22
p23
w24
x25"
trackable_list_wrapper
¦
0
1
!2
"3
)4
*5
96
:7
C8
D9
S10
T11
]12
^13
m14
n15
w16
x17"
trackable_list_wrapper
 "
trackable_list_wrapper
Ï
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
2ÿ
-__inference_sequential_3_layer_call_fn_275899
-__inference_sequential_3_layer_call_fn_276456
-__inference_sequential_3_layer_call_fn_276513
-__inference_sequential_3_layer_call_fn_276257À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
î2ë
H__inference_sequential_3_layer_call_and_return_conditional_losses_276619
H__inference_sequential_3_layer_call_and_return_conditional_losses_276802
H__inference_sequential_3_layer_call_and_return_conditional_losses_276325
H__inference_sequential_3_layer_call_and_return_conditional_losses_276393À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
áBÞ
!__inference__wrapped_model_275366batch_normalization_10_input"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
-
serving_default"
signature_map
 "
trackable_list_wrapper
*:(2batch_normalization_10/gamma
):'2batch_normalization_10/beta
2:0 (2"batch_normalization_10/moving_mean
6:4 (2&batch_normalization_10/moving_variance
<
0
1
2
3"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses"
_generic_user_object
¬2©
7__inference_batch_normalization_10_layer_call_fn_276874
7__inference_batch_normalization_10_layer_call_fn_276887´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
â2ß
R__inference_batch_normalization_10_layer_call_and_return_conditional_losses_276907
R__inference_batch_normalization_10_layer_call_and_return_conditional_losses_276941´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
!:d2dense_15/kernel
:d2dense_15/bias
.
!0
"1"
trackable_list_wrapper
.
!0
"1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses"
_generic_user_object
Ó2Ð
)__inference_dense_15_layer_call_fn_276950¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
î2ë
D__inference_dense_15_layer_call_and_return_conditional_losses_276961¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
": 	d2dense_16/kernel
:2dense_16/bias
.
)0
*1"
trackable_list_wrapper
.
)0
*1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses"
_generic_user_object
Ó2Ð
)__inference_dense_16_layer_call_fn_276970¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
î2ë
D__inference_dense_16_layer_call_and_return_conditional_losses_276981¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
1	variables
2trainable_variables
3regularization_losses
6__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
2
*__inference_dropout_8_layer_call_fn_276986
*__inference_dropout_8_layer_call_fn_276991´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
È2Å
E__inference_dropout_8_layer_call_and_return_conditional_losses_276996
E__inference_dropout_8_layer_call_and_return_conditional_losses_277008´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
 "
trackable_list_wrapper
+:)2batch_normalization_11/gamma
*:(2batch_normalization_11/beta
3:1 (2"batch_normalization_11/moving_mean
7:5 (2&batch_normalization_11/moving_variance
<
90
:1
;2
<3"
trackable_list_wrapper
.
90
:1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
 metrics
 ¡layer_regularization_losses
¢layer_metrics
=	variables
>trainable_variables
?regularization_losses
A__call__
*B&call_and_return_all_conditional_losses
&B"call_and_return_conditional_losses"
_generic_user_object
¬2©
7__inference_batch_normalization_11_layer_call_fn_277021
7__inference_batch_normalization_11_layer_call_fn_277034´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
â2ß
R__inference_batch_normalization_11_layer_call_and_return_conditional_losses_277054
R__inference_batch_normalization_11_layer_call_and_return_conditional_losses_277088´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
": 	d2dense_17/kernel
:d2dense_17/bias
.
C0
D1"
trackable_list_wrapper
.
C0
D1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
£non_trainable_variables
¤layers
¥metrics
 ¦layer_regularization_losses
§layer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses"
_generic_user_object
Ó2Ð
)__inference_dense_17_layer_call_fn_277097¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
î2ë
D__inference_dense_17_layer_call_and_return_conditional_losses_277108¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
¨non_trainable_variables
©layers
ªmetrics
 «layer_regularization_losses
¬layer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
P__call__
*Q&call_and_return_all_conditional_losses
&Q"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
2
*__inference_dropout_9_layer_call_fn_277113
*__inference_dropout_9_layer_call_fn_277118´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
È2Å
E__inference_dropout_9_layer_call_and_return_conditional_losses_277123
E__inference_dropout_9_layer_call_and_return_conditional_losses_277135´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
 "
trackable_list_wrapper
*:(d2batch_normalization_12/gamma
):'d2batch_normalization_12/beta
2:0d (2"batch_normalization_12/moving_mean
6:4d (2&batch_normalization_12/moving_variance
<
S0
T1
U2
V3"
trackable_list_wrapper
.
S0
T1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
­non_trainable_variables
®layers
¯metrics
 °layer_regularization_losses
±layer_metrics
W	variables
Xtrainable_variables
Yregularization_losses
[__call__
*\&call_and_return_all_conditional_losses
&\"call_and_return_conditional_losses"
_generic_user_object
¬2©
7__inference_batch_normalization_12_layer_call_fn_277148
7__inference_batch_normalization_12_layer_call_fn_277161´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
â2ß
R__inference_batch_normalization_12_layer_call_and_return_conditional_losses_277181
R__inference_batch_normalization_12_layer_call_and_return_conditional_losses_277215´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
!:d(2dense_18/kernel
:(2dense_18/bias
.
]0
^1"
trackable_list_wrapper
.
]0
^1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
²non_trainable_variables
³layers
´metrics
 µlayer_regularization_losses
¶layer_metrics
_	variables
`trainable_variables
aregularization_losses
c__call__
*d&call_and_return_all_conditional_losses
&d"call_and_return_conditional_losses"
_generic_user_object
Ó2Ð
)__inference_dense_18_layer_call_fn_277224¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
î2ë
D__inference_dense_18_layer_call_and_return_conditional_losses_277235¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
·non_trainable_variables
¸layers
¹metrics
 ºlayer_regularization_losses
»layer_metrics
e	variables
ftrainable_variables
gregularization_losses
j__call__
*k&call_and_return_all_conditional_losses
&k"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
2
+__inference_dropout_10_layer_call_fn_277240
+__inference_dropout_10_layer_call_fn_277245´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ê2Ç
F__inference_dropout_10_layer_call_and_return_conditional_losses_277250
F__inference_dropout_10_layer_call_and_return_conditional_losses_277262´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
 "
trackable_list_wrapper
*:((2batch_normalization_13/gamma
):'(2batch_normalization_13/beta
2:0( (2"batch_normalization_13/moving_mean
6:4( (2&batch_normalization_13/moving_variance
<
m0
n1
o2
p3"
trackable_list_wrapper
.
m0
n1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
¼non_trainable_variables
½layers
¾metrics
 ¿layer_regularization_losses
Àlayer_metrics
q	variables
rtrainable_variables
sregularization_losses
u__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses"
_generic_user_object
¬2©
7__inference_batch_normalization_13_layer_call_fn_277275
7__inference_batch_normalization_13_layer_call_fn_277288´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
â2ß
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_277308
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_277342´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
!:(2dense_19/kernel
:2dense_19/bias
.
w0
x1"
trackable_list_wrapper
.
w0
x1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
Ánon_trainable_variables
Âlayers
Ãmetrics
 Älayer_regularization_losses
Ålayer_metrics
y	variables
ztrainable_variables
{regularization_losses
}__call__
*~&call_and_return_all_conditional_losses
&~"call_and_return_conditional_losses"
_generic_user_object
Ó2Ð
)__inference_dense_19_layer_call_fn_277351¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
î2ë
D__inference_dense_19_layer_call_and_return_conditional_losses_277362¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
X
0
1
;2
<3
U4
V5
o6
p7"
trackable_list_wrapper
v
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
11"
trackable_list_wrapper
0
Æ0
Ç1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
àBÝ
$__inference_signature_wrapper_276861batch_normalization_10_input"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
.
0
1"
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
.
;0
<1"
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
.
U0
V1"
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
.
o0
p1"
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
R

Ètotal

Écount
Ê	variables
Ë	keras_api"
_tf_keras_metric
c

Ìtotal

Ícount
Î
_fn_kwargs
Ï	variables
Ð	keras_api"
_tf_keras_metric
:  (2total
:  (2count
0
È0
É1"
trackable_list_wrapper
.
Ê	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
Ì0
Í1"
trackable_list_wrapper
.
Ï	variables"
_generic_user_object
/:-2#Adam/batch_normalization_10/gamma/m
.:,2"Adam/batch_normalization_10/beta/m
&:$d2Adam/dense_15/kernel/m
 :d2Adam/dense_15/bias/m
':%	d2Adam/dense_16/kernel/m
!:2Adam/dense_16/bias/m
0:.2#Adam/batch_normalization_11/gamma/m
/:-2"Adam/batch_normalization_11/beta/m
':%	d2Adam/dense_17/kernel/m
 :d2Adam/dense_17/bias/m
/:-d2#Adam/batch_normalization_12/gamma/m
.:,d2"Adam/batch_normalization_12/beta/m
&:$d(2Adam/dense_18/kernel/m
 :(2Adam/dense_18/bias/m
/:-(2#Adam/batch_normalization_13/gamma/m
.:,(2"Adam/batch_normalization_13/beta/m
&:$(2Adam/dense_19/kernel/m
 :2Adam/dense_19/bias/m
/:-2#Adam/batch_normalization_10/gamma/v
.:,2"Adam/batch_normalization_10/beta/v
&:$d2Adam/dense_15/kernel/v
 :d2Adam/dense_15/bias/v
':%	d2Adam/dense_16/kernel/v
!:2Adam/dense_16/bias/v
0:.2#Adam/batch_normalization_11/gamma/v
/:-2"Adam/batch_normalization_11/beta/v
':%	d2Adam/dense_17/kernel/v
 :d2Adam/dense_17/bias/v
/:-d2#Adam/batch_normalization_12/gamma/v
.:,d2"Adam/batch_normalization_12/beta/v
&:$d(2Adam/dense_18/kernel/v
 :(2Adam/dense_18/bias/v
/:-(2#Adam/batch_normalization_13/gamma/v
.:,(2"Adam/batch_normalization_13/beta/v
&:$(2Adam/dense_19/kernel/v
 :2Adam/dense_19/bias/v¾
!__inference__wrapped_model_275366!")*<9;:CDVSUT]^pmonwxE¢B
;¢8
63
batch_normalization_10_inputÿÿÿÿÿÿÿÿÿ
ª "3ª0
.
dense_19"
dense_19ÿÿÿÿÿÿÿÿÿ¸
R__inference_batch_normalization_10_layer_call_and_return_conditional_losses_276907b3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¸
R__inference_batch_normalization_10_layer_call_and_return_conditional_losses_276941b3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ
p
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
7__inference_batch_normalization_10_layer_call_fn_276874U3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "ÿÿÿÿÿÿÿÿÿ
7__inference_batch_normalization_10_layer_call_fn_276887U3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ
p
ª "ÿÿÿÿÿÿÿÿÿº
R__inference_batch_normalization_11_layer_call_and_return_conditional_losses_277054d<9;:4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 º
R__inference_batch_normalization_11_layer_call_and_return_conditional_losses_277088d;<9:4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
7__inference_batch_normalization_11_layer_call_fn_277021W<9;:4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "ÿÿÿÿÿÿÿÿÿ
7__inference_batch_normalization_11_layer_call_fn_277034W;<9:4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p
ª "ÿÿÿÿÿÿÿÿÿ¸
R__inference_batch_normalization_12_layer_call_and_return_conditional_losses_277181bVSUT3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿd
p 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿd
 ¸
R__inference_batch_normalization_12_layer_call_and_return_conditional_losses_277215bUVST3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿd
p
ª "%¢"

0ÿÿÿÿÿÿÿÿÿd
 
7__inference_batch_normalization_12_layer_call_fn_277148UVSUT3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿd
p 
ª "ÿÿÿÿÿÿÿÿÿd
7__inference_batch_normalization_12_layer_call_fn_277161UUVST3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿd
p
ª "ÿÿÿÿÿÿÿÿÿd¸
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_277308bpmon3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ(
p 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ(
 ¸
R__inference_batch_normalization_13_layer_call_and_return_conditional_losses_277342bopmn3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ(
p
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ(
 
7__inference_batch_normalization_13_layer_call_fn_277275Upmon3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ(
p 
ª "ÿÿÿÿÿÿÿÿÿ(
7__inference_batch_normalization_13_layer_call_fn_277288Uopmn3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ(
p
ª "ÿÿÿÿÿÿÿÿÿ(¤
D__inference_dense_15_layer_call_and_return_conditional_losses_276961\!"/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿd
 |
)__inference_dense_15_layer_call_fn_276950O!"/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿd¥
D__inference_dense_16_layer_call_and_return_conditional_losses_276981])*/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿd
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 }
)__inference_dense_16_layer_call_fn_276970P)*/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿd
ª "ÿÿÿÿÿÿÿÿÿ¥
D__inference_dense_17_layer_call_and_return_conditional_losses_277108]CD0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿd
 }
)__inference_dense_17_layer_call_fn_277097PCD0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿd¤
D__inference_dense_18_layer_call_and_return_conditional_losses_277235\]^/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿd
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ(
 |
)__inference_dense_18_layer_call_fn_277224O]^/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿd
ª "ÿÿÿÿÿÿÿÿÿ(¤
D__inference_dense_19_layer_call_and_return_conditional_losses_277362\wx/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ(
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 |
)__inference_dense_19_layer_call_fn_277351Owx/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ(
ª "ÿÿÿÿÿÿÿÿÿ¦
F__inference_dropout_10_layer_call_and_return_conditional_losses_277250\3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ(
p 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ(
 ¦
F__inference_dropout_10_layer_call_and_return_conditional_losses_277262\3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ(
p
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ(
 ~
+__inference_dropout_10_layer_call_fn_277240O3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ(
p 
ª "ÿÿÿÿÿÿÿÿÿ(~
+__inference_dropout_10_layer_call_fn_277245O3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ(
p
ª "ÿÿÿÿÿÿÿÿÿ(§
E__inference_dropout_8_layer_call_and_return_conditional_losses_276996^4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 §
E__inference_dropout_8_layer_call_and_return_conditional_losses_277008^4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
*__inference_dropout_8_layer_call_fn_276986Q4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "ÿÿÿÿÿÿÿÿÿ
*__inference_dropout_8_layer_call_fn_276991Q4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p
ª "ÿÿÿÿÿÿÿÿÿ¥
E__inference_dropout_9_layer_call_and_return_conditional_losses_277123\3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿd
p 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿd
 ¥
E__inference_dropout_9_layer_call_and_return_conditional_losses_277135\3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿd
p
ª "%¢"

0ÿÿÿÿÿÿÿÿÿd
 }
*__inference_dropout_9_layer_call_fn_277113O3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿd
p 
ª "ÿÿÿÿÿÿÿÿÿd}
*__inference_dropout_9_layer_call_fn_277118O3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿd
p
ª "ÿÿÿÿÿÿÿÿÿdß
H__inference_sequential_3_layer_call_and_return_conditional_losses_276325!")*<9;:CDVSUT]^pmonwxM¢J
C¢@
63
batch_normalization_10_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ß
H__inference_sequential_3_layer_call_and_return_conditional_losses_276393!")*;<9:CDUVST]^opmnwxM¢J
C¢@
63
batch_normalization_10_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 È
H__inference_sequential_3_layer_call_and_return_conditional_losses_276619|!")*<9;:CDVSUT]^pmonwx7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 È
H__inference_sequential_3_layer_call_and_return_conditional_losses_276802|!")*;<9:CDUVST]^opmnwx7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ·
-__inference_sequential_3_layer_call_fn_275899!")*<9;:CDVSUT]^pmonwxM¢J
C¢@
63
batch_normalization_10_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ·
-__inference_sequential_3_layer_call_fn_276257!")*;<9:CDUVST]^opmnwxM¢J
C¢@
63
batch_normalization_10_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ 
-__inference_sequential_3_layer_call_fn_276456o!")*<9;:CDVSUT]^pmonwx7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ 
-__inference_sequential_3_layer_call_fn_276513o!")*;<9:CDUVST]^opmnwx7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿá
$__inference_signature_wrapper_276861¸!")*<9;:CDVSUT]^pmonwxe¢b
¢ 
[ªX
V
batch_normalization_10_input63
batch_normalization_10_inputÿÿÿÿÿÿÿÿÿ"3ª0
.
dense_19"
dense_19ÿÿÿÿÿÿÿÿÿ