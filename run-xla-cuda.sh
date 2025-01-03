export YOLOX_DATADIR=/datasets
export YOLOX_OUPUT_DIR="./YOLOX_xla_cuda_outputs"
export OMP_NUM_THREADS=16
export LOGURU_LEVEL=INFO
#export XLA_IR_DEBUG=1
#export XLA_HLO_DEBUG=1
#export PT_XLA_DEBUG=1
#export PT_XLA_DEBUG_FILE=./pt_xla_debug.txt
torchrun --standalone --nproc_per_node=8 tools/train.py -b 32 -n yolox-s
