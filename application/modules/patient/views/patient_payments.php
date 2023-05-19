<!--sidebar end-->
<!--main content start-->
<section id="main-content">
    <section class="wrapper site-min-height">
        <!-- page start-->
        <section class="panel">
            <header class="panel-heading">
                <?php echo lang('patient'); ?> <?php echo lang('payments'); ?>
            </header>
            <div class="panel-body">
                <div class="adv-table editable-table ">
                    <div class="space15"></div>
                    <table class="table table-striped table-hover table-bordered" id="editable-sample">
                        <thead>
                            <tr>
                                <th><?php echo lang('patient_id'); ?></th>
                                <th><?php echo lang('name'); ?></th>
                                <th><?php echo lang('phone'); ?></th>
                                <th><?php echo lang('due_balance'); ?></th>
                                <?php if ($this->ion_auth->in_group(array('admin', 'Doctor', 'Accountant', 'Receptionist', 'Laboratorist'))) { ?>
                                    <th class="no-print"><?php echo lang('options'); ?></th>
                                <?php } ?>
                            </tr>
                        </thead>
                        <tbody>
                            <style>
                                .img_url {
                                    height: 20px;
                                    width: 20px;
                                    background-size: contain;
                                    max-height: 20px;
                                    border-radius: 100px;
                                }
                            </style>

                        </tbody>
                    </table>
                </div>
            </div>
        </section>
        <!-- page end-->
    </section>
</section>
<!--main content end-->
<!--footer start-->

<script src="common/js/codearistos.min.js"></script>

<script>
    var video = document.getElementById('video');
    // Get access to the camera!
    if (navigator.mediaDevices && navigator.mediaDevices.getUserMedia) {
        // Not adding `{ audio: true }` since we only want video now
        navigator.mediaDevices.getUserMedia({
            video: true
        }).then(function(stream) {
            video.src = window.URL.createObjectURL(stream);
            video.play();
        });
    }

    // Elements for taking the snapshot
    var canvas = document.getElementById('canvas');
    var context = canvas.getContext('2d');
    var video = document.getElementById('video');
    // Trigger photo take
    document.getElementById("snap").addEventListener("click", function() {
        context.drawImage(video, 0, 0, 200, 200);
    });
</script>



<script type="text/javascript">
    $(".table").on("click", ".editbutton", function() {
        //    e.preventDefault(e);
        // Get the record's ID via attribute  
        var iid = $(this).attr('data-id');
        $('#editPatientForm').trigger("reset");
        $('#myModal2').modal('show');
        $.ajax({
            url: 'patient/editPatientByJason?id=' + iid,
            method: 'GET',
            data: '',
            dataType: 'json',
        }).success(function(response) {
            // Populate the form fields with the data returned from server

            $('#editPatientForm').find('[name="id"]').val(response.patient.id).end()
            $('#editPatientForm').find('[name="name"]').val(response.patient.name).end()
            $('#editPatientForm').find('[name="password"]').val(response.patient.password).end()
            $('#editPatientForm').find('[name="email"]').val(response.patient.email).end()
            $('#editPatientForm').find('[name="address"]').val(response.patient.address).end()
            $('#editPatientForm').find('[name="phone"]').val(response.patient.phone).end()
            $('#editPatientForm').find('[name="sex"]').val(response.patient.sex).end()
            $('#editPatientForm').find('[name="birthdate"]').val(response.patient.birthdate).end()
            $('#editPatientForm').find('[name="bloodgroup"]').val(response.patient.bloodgroup).end()
            $('#editPatientForm').find('[name="p_id"]').val(response.patient.patient_id).end()

            if (typeof response.patient.img_url !== 'undefined' && response.patient.img_url != '') {
                $("#img").attr("src", response.patient.img_url);
            }

            $('.js-example-basic-single.doctor').val(response.patient.doctor).trigger('change');
        });
    });
</script>


<script>
    $(document).ready(function() {
        var table = $('#editable-sample').DataTable({
            responsive: true,
            //   dom: 'lfrBtip',

            "processing": true,
            "serverSide": true,
            "searchable": true,
            "ajax": {
                url: "patient/getPatientPayments",
                type: 'POST',
            },
            scroller: {
                loadingIndicator: true
            },
            dom: "<'row'<'col-sm-3'l><'col-sm-5 text-center'B><'col-sm-4'f>>" +
                "<'row'<'col-sm-12'tr>>" +
                "<'row'<'col-sm-5'i><'col-sm-7'p>>",
            buttons: [
                'copyHtml5',
                'excelHtml5',
                'csvHtml5',
                'pdfHtml5',
                {
                    extend: 'print',
                    exportOptions: {
                        columns: [1, 2, 3],
                    }
                },
            ],
            aLengthMenu: [
                [10, 25, 50, 100, -1],
                [10, 25, 50, 100, "All"]
            ],
            iDisplayLength: 100,
            "order": [
                [0, "desc"]
            ],

            "language": {
                "lengthMenu": "_MENU_",
                search: "_INPUT_",
                "url": "common/assets/DataTables/languages/<?php echo $this->language; ?>.json"
            }
        });
        table.buttons().container().appendTo('.custom_buttons');

    });
</script>



<script>
    $(document).ready(function() {
        $(".flashmessage").delay(3000).fadeOut(100);
    });
</script>