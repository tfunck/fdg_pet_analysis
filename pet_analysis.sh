for sub in subjects; do
   pet=<path to pet image>
   ref=<path to arterial input>
   patlak pet ref output

   antsRegistrationSyNQuick.sh -a -d  -f pet -m mni_template -o tfm
   antsApplyTransforms -i mni_atlas -r pet -t tfm_Affine.h5 -o atlas_in_pet_space

   <python (or other) script to read mean values from your parametric images with atlas labels> #I can provide a quick script to do this if need be
done
