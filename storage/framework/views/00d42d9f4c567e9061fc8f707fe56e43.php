<?php $__env->startSection('title',"edit books"); ?>


<?php $__env->startSection('content'); ?>

<div class="container ">
    <div class="row justify-content-center mt-5   ">
        <div class="col-md-8">
            <div class="card mx-5">
                <form method ="post" action="/booksadmin/<?php echo e($book['id']); ?>">
                    <?php echo csrf_field(); ?>

                    <?php echo method_field('put'); ?>

                    <div class="row mb-3 p-3">
                            <label for="name" class="col-md-4 col-form-label text-md-end"><?php echo e(__('Name')); ?></label>

                            <div class="col-md-6">
                                <input type="text" class="form-control w-75 " name="name" value="<?php echo e($book['name']); ?>" >

                            </div>
                        </div>


                        <div class="row mb-3 p-3">
                            <label for="details" class="col-md-4 col-form-label text-md-end"><?php echo e(__('Details ')); ?></label>

                            <div class="col-md-6 ">
                            <input type="text" class="form-control w-75 " name="details" value="<?php echo e($book['details']); ?>" >


                            </div>
                        </div>

                        <div class="row mb-3 pl-3 ">
                            <label for="category" class="col-md-4 col-form-label text-md-end"><?php echo e(__('Category ')); ?></label>

                            <div class="col-md-6 ">
                            <input type="number" class="form-control  w-75 " name="category" value="<?php echo e($book['category_id']); ?>" >


                            </div>
                        </div>

                        <div class="row mb-3 pl-3 ">
                            <label for="status" class="col-md-4 col-form-label text-md-end"><?php echo e(__('Status ')); ?></label>

                            <div class="col-md-6 ">
                            <input type="text" class="form-control  w-75 " name="status" value="<?php echo e($book['status']); ?>" >


                            </div>
                        </div>



                        <div class="row mb-0 p-3">
                            <div class="col-md-6 offset-md-4">
                                <button type="submit" class="btn btn-outline-primary mb-2">
                                    <?php echo e(__('Update')); ?>

                                </button>
                            </div>
                        </div>
                </form>



                <?php $__currentLoopData = $errors->all(); $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $error): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <li><?php echo e($error); ?></li>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
            </div>
        </div>
    </div>
</div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layout.admin', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\Users\Menna\OneDrive\Desktop\laravel\lms\resources\views/admin/books/edit.blade.php ENDPATH**/ ?>