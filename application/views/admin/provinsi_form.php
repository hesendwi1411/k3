<!doctype html>
<html>
    <head>
        <title>harviacode.com - codeigniter crud generator</title>
        <link rel="stylesheet" href="<?php echo base_url('assets/bootstrap/css/bootstrap.min.css') ?>"/>
        <link rel="stylesheet" href="<?php echo base_url('assets/select2/css/select2.css') ?>"/>
        <style>
            body{
                padding: 15px;
            }
        </style>
    </head>
    <body>
        <?php echo form_open($action); ?>
            <div class="form-group">
                <label for="foto">provinsi</label>
                <?php
                $dd_provinsi_attribute = 'class="form-control select2"';
                echo form_dropdown('provinsi', $dd_provinsi, $provinsi_selected, $dd_provinsi_attribute);
                ?>
            </div>
            <button type="submit" class="btn btn-primary"><?php echo $button ?></button> 
        </form>
        
        <!--jquery dan select2-->
        <script src="<?php echo base_url('assets/js/jquery-1.11.2.min.js') ?>"></script>
        <script src="<?php echo base_url('assets/select2/js/select2.min.js') ?>"></script>
        <script>
            $(document).ready(function () {
                $(".select2").select2({
                    placeholder: "Please Select"
                });
            });
        </script>
    </body>
</html>