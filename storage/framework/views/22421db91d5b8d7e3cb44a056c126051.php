<?php $__env->startSection("title","Borrowed Books"); ?>
<?php $__env->startSection('content'); ?>

<form method="post" action="/books">
    <?php echo csrf_field(); ?>

    <table class="table table-borderless table-hover">

    <tr>
        <th>Name</th>
        <th>Issue Date</th>
        <th>Return Date</th>
        <th></th>
    </tr>
    <?php $__currentLoopData = $books; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $book): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
    <tr>
        <td> <?php echo e($book->book->name); ?> </td>
        <td> <?php echo e($book->issue_date); ?> </td>
        <td> <?php echo e($book->return_date); ?> </td>

        <td colspan=5 align="center">
            <form action="/bookissue/<?php echo e($book->id); ?>/<?php echo e($book->book->id); ?>" method="post">
                <?php echo csrf_field(); ?>
                <?php echo method_field('delete'); ?>
                <input type="submit" class="btn btn-outline-primary" value="Return" >
            </form>

        </td>

    </tr>


    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>


    </table>
</form>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layout.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\Users\Menna\OneDrive\Desktop\laravel\lms\resources\views//bookissue/bookissue.blade.php ENDPATH**/ ?>