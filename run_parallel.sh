#!/bin/bash
python3 -m tensor2tensor.data_generators.wikisum.parallel_launch   --num_instances=4   --cpu=1 --mem=2  --code_dir=./ --name=wikisum-cc-refs   --log_dir=$BUCKET/logs   --setup_command="pip3 install tensor2tensor tensorflow -U -q --user" --command_prefix="python3 -m tensor2tensor/data_generators.wikisum.get_references_commoncrawl --num_tasks=4 --out_dir=$BUCKET/wiki_references"
