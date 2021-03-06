/*---------------------------------------------------------------------------*
 *  smtsock.d - LIBERO dialog data definitions for smtsock.c.                *
 *  Generated by LIBERO 2.30 on 22 Dec, 1998, 15:35.                         *
 *  Schema file used: smtschm.c.                                             *
 *---------------------------------------------------------------------------*/

/*- Symbolic constants and event numbers ------------------------------------*/

#define _LR_STOP                        0xFFFFL
#define _LR_NULL_EVENT                  -2
#define _LR_NULL_STATE                  -1
#define terminate_event                 -1
#define closed_event                    0
#define connect_event                   1
#define empty_event                     2
#define error_event                     3
#define exception_event                 4
#define finished_event                  5
#define flush_event                     6
#define incomplete_event                7
#define input_event                     8
#define inputr_event                    9
#define invalid_event                   10
#define no_activity_event               11
#define no_requests_event               12
#define ok_event                        13
#define output_event                    14
#define read_event                      15
#define readh_event                     16
#define readr_event                     17
#define readrh_event                    18
#define shutdown_event                  19
#define timeout_event                   20
#define write_event                     21
#define writeh_event                    22
#define _LR_STATE_after_init            0
#define _LR_STATE_getting_event         1
#define _LR_STATE_socket_activity       2
#define _LR_STATE_after_reading         3
#define _LR_STATE_after_writing         4
#define _LR_STATE_defaults              5
#define _LR_defaults_state              5


/*- Function prototypes and macros ------------------------------------------*/

#ifndef MODULE
#define MODULE  static void             /*  Libero dialog modules            */
#endif

MODULE initialise_the_thread        (THREAD *thread);
MODULE check_first_socket_activity  (THREAD *thread);
MODULE check_for_expired_requests   (THREAD *thread);
MODULE check_next_socket_activity   (THREAD *thread);
MODULE create_connect_request       (THREAD *thread);
MODULE create_huge_read_repeat_request (THREAD *thread);
MODULE create_huge_read_request     (THREAD *thread);
MODULE create_huge_write_request    (THREAD *thread);
MODULE create_input_repeat_request  (THREAD *thread);
MODULE create_input_request         (THREAD *thread);
MODULE create_output_request        (THREAD *thread);
MODULE create_read_repeat_request   (THREAD *thread);
MODULE create_read_request          (THREAD *thread);
MODULE create_write_request         (THREAD *thread);
MODULE destroy_all_requests         (THREAD *thread);
MODULE flush_socket_requests        (THREAD *thread);
MODULE get_next_event_from_queue    (THREAD *thread);
MODULE read_data_from_socket        (THREAD *thread);
MODULE send_timeout_event_to_self   (THREAD *thread);
MODULE signal_read_closed           (THREAD *thread);
MODULE signal_read_complete         (THREAD *thread);
MODULE signal_socket_error          (THREAD *thread);
MODULE signal_socket_ready_for_input (THREAD *thread);
MODULE signal_socket_ready_for_output (THREAD *thread);
MODULE signal_write_closed          (THREAD *thread);
MODULE signal_write_complete        (THREAD *thread);
MODULE terminate_the_thread         (THREAD *thread);
MODULE wait_for_socket_activity     (THREAD *thread);
MODULE write_data_to_socket         (THREAD *thread);

#define the_next_event              _the_next_event
#define the_exception_event         _the_exception_event
#define the_external_event          _the_external_event
#define exception_raised            _exception_raised
#define io_completed                _io_completed


/*- Static areas shared by all threads --------------------------------------*/

static word _LR_nextst [6][23] =
{
    { 0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0 },
    { 0,1,2,0,0,0,1,0,1,1,1,1,1,0,1,1,1,1,1,0,1,1,1 },
    { 0,0,0,2,0,1,0,0,2,0,0,0,0,0,2,3,0,0,0,0,0,4,0 },
    { 2,0,0,2,0,2,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 },
    { 2,0,0,2,0,2,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 },
    { 5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5 }
};

static word _LR_action [6][23] =
{
    { 0,0,0,2,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0 },
    { 0,12,15,0,0,0,13,0,9,10,14,16,16,0,11,3,4,5,6,0,14,7,8 },
    { 0,0,0,21,0,16,0,0,19,0,0,0,0,0,20,17,0,0,0,0,0,18,0 },
    { 24,0,0,21,0,23,0,22,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 },
    { 26,0,0,21,0,25,0,22,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0 },
    { 1,1,1,1,27,1,1,1,1,1,1,1,1,1,1,1,1,1,1,27,1,1,1 }
};

static word _LR_offset [] =
{
    0,
    0,
    1,
    3,
    6,
    9,
    12,
    15,
    18,
    21,
    24,
    27,
    30,
    33,
    36,
    38,
    42,
    44,
    46,
    48,
    51,
    54,
    57,
    59,
    62,
    65,
    68,
    71
};

static word _LR_vector [] =
{
    _LR_STOP,
    25,_LR_STOP,
    11,15,_LR_STOP,
    5,15,_LR_STOP,
    10,15,_LR_STOP,
    4,15,_LR_STOP,
    12,15,_LR_STOP,
    6,15,_LR_STOP,
    8,15,_LR_STOP,
    7,15,_LR_STOP,
    9,15,_LR_STOP,
    3,15,_LR_STOP,
    14,15,_LR_STOP,
    15,_LR_STOP,
    1,26,0,_LR_STOP,
    17,_LR_STOP,
    16,_LR_STOP,
    27,_LR_STOP,
    21,2,_LR_STOP,
    22,2,_LR_STOP,
    20,2,_LR_STOP,
    2,_LR_STOP,
    19,2,_LR_STOP,
    18,2,_LR_STOP,
    24,2,_LR_STOP,
    23,2,_LR_STOP,
    13,25,_LR_STOP
};

static HOOK *_LR_module [28] = {
    check_first_socket_activity,
    check_for_expired_requests,
    check_next_socket_activity,
    create_connect_request,
    create_huge_read_repeat_request,
    create_huge_read_request,
    create_huge_write_request,
    create_input_repeat_request,
    create_input_request,
    create_output_request,
    create_read_repeat_request,
    create_read_request,
    create_write_request,
    destroy_all_requests,
    flush_socket_requests,
    get_next_event_from_queue,
    read_data_from_socket,
    send_timeout_event_to_self,
    signal_read_closed,
    signal_read_complete,
    signal_socket_error,
    signal_socket_ready_for_input,
    signal_socket_ready_for_output,
    signal_write_closed,
    signal_write_complete,
    terminate_the_thread,
    wait_for_socket_activity,
    write_data_to_socket
};

#if (defined (DEBUG))
static char *_LR_mname [28] =
{
     "Check-First-Socket-Activity",
     "Check-For-Expired-Requests",
     "Check-Next-Socket-Activity",
     "Create-Connect-Request",
     "Create-Huge-Read-Repeat-Request",
     "Create-Huge-Read-Request",
     "Create-Huge-Write-Request",
     "Create-Input-Repeat-Request",
     "Create-Input-Request",
     "Create-Output-Request",
     "Create-Read-Repeat-Request",
     "Create-Read-Request",
     "Create-Write-Request",
     "Destroy-All-Requests",
     "Flush-Socket-Requests",
     "Get-Next-Event-From-Queue",
     "Read-Data-From-Socket",
     "Send-Timeout-Event-To-Self",
     "Signal-Read-Closed",
     "Signal-Read-Complete",
     "Signal-Socket-Error",
     "Signal-Socket-Ready-For-Input",
     "Signal-Socket-Ready-For-Output",
     "Signal-Write-Closed",
     "Signal-Write-Complete",
     "Terminate-The-Thread",
     "Wait-For-Socket-Activity",
     "Write-Data-To-Socket"
};

static char *_LR_sname [6] =
{
     "After-Init",
     "Getting-Event",
     "Socket-Activity",
     "After-Reading",
     "After-Writing",
     "Defaults"
};

static char *_LR_ename [23] =
{
     "Closed-Event",
     "Connect-Event",
     "Empty-Event",
     "Error-Event",
     "Exception-Event",
     "Finished-Event",
     "Flush-Event",
     "Incomplete-Event",
     "Input-Event",
     "Inputr-Event",
     "Invalid-Event",
     "No-Activity-Event",
     "No-Requests-Event",
     "Ok-Event",
     "Output-Event",
     "Read-Event",
     "Readh-Event",
     "Readr-Event",
     "Readrh-Event",
     "Shutdown-Event",
     "Timeout-Event",
     "Write-Event",
     "Writeh-Event"
};
#else
static char *_LR_mname [28] =
{
     "0",
     "1",
     "2",
     "3",
     "4",
     "5",
     "6",
     "7",
     "8",
     "9",
     "10",
     "11",
     "12",
     "13",
     "14",
     "15",
     "16",
     "17",
     "18",
     "19",
     "20",
     "21",
     "22",
     "23",
     "24",
     "25",
     "26",
     "27"
};

static char *_LR_sname [6] =
{
     "0",
     "1",
     "2",
     "3",
     "4",
     "5"
};

static char *_LR_ename [23] =
{
     "0",
     "1",
     "2",
     "3",
     "4",
     "5",
     "6",
     "7",
     "8",
     "9",
     "10",
     "11",
     "12",
     "13",
     "14",
     "15",
     "16",
     "17",
     "18",
     "19",
     "20",
     "21",
     "22"
};
#endif
