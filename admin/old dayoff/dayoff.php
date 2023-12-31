<?php
include('../include/header.php');

$sql = mysqli_query($con,"SELECT DISTINCT date_off,id FROM `day_off` WHERE status=true");  ?>

<div id="page-wrapper">
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Table of Holiday and Saturday off
            <a href="dayoff_add.php"><button type="button" class="btn btn-primary pull-right"><span class="fa fa-plus-circle"> </span> Add Record</button></a>
            </h1>
        </div>
    </div>
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-primary">
                <div class="panel-heading">
                   <strong>Table of Holiday and Saturday off </strong>
                </div>
                <div class="panel-body">
                    <div class="table-responsive">
                        <table width="100%" class="table table-striped table-bordered table-hover " id="rev-table">
                            <thead>
                                <tr>
                                    <th width="50%">Set Date</th>
                                    <th  width="50%">Actions</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <?php
                                    while($row = mysqli_fetch_array($sql)) {  ?>
                                    <td><?php echo date("l jS \of F Y ",strtotime($row['date_off']));  ?></td>
                                    <td>
                                        <a href="dayoff_edit.php?id=<?php echo $row['id']; ?>" ><button type="button" class="btn btn-primary btn-xs"><span class="fa fa-edit"> </span> Update</button></a>
                                        <a href="dayoff_update.php?id=<?php echo $row['id']; ?>&option=delete&setdate=<?php echo $row['date_off']; ?>" ><button type="button" class="btn btn-danger btn-xs"><span class="fa fa-trash"> </span> Delete</button></a>
                                    </td>
                                </tr>
                                <?php } ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
<script type="text/javascript">
    $('form').bind("validated.bs.validator",function(){
    // $(this).find("#submitModal").modal("hide");
    $(this).find('#submit-button').prop('disabled',false);
    $(this).find('#submit-button-no').prop('disabled',false);

        $('form').submit(function(){
            $(this).find('#submit-button').prop('disabled',true);
            $(this).find('#submit-button-no').prop('disabled',true);
        });
    });

    $('form input').on('keypress', function(e) {
    return e.which !== 13;
    });
</script> 
</html>