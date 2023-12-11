.class public Landroid/provider/CallLog$AddCallParams;
.super Ljava/lang/Object;
.source "CallLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/CallLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AddCallParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/CallLog$AddCallParams$AddCallParametersBuilder;
    }
.end annotation


# instance fields
.field private mAccountHandle:Landroid/telecom/PhoneAccountHandle;

.field private mAddForAllUsers:Z

.field private mCallBlockReason:I

.field private mCallScreeningAppName:Ljava/lang/CharSequence;

.field private mCallScreeningComponentName:Ljava/lang/String;

.field private mCallType:I

.field private mCallerInfo:Landroid/telecom/CallerInfo;

.field private mDataUsage:J

.field private mDuration:I

.field private mFeatures:I

.field private mIsPhoneAccountMigrationPending:I

.field private mIsRead:Z

.field private mLatitude:D

.field private mLongitude:D

.field private mMissedReason:J

.field private mNumber:Ljava/lang/String;

.field private mPictureUri:Landroid/net/Uri;

.field private mPostDialDigits:Ljava/lang/String;

.field private mPresentation:I

.field private mPriority:I

.field private mStart:J

.field private mSubject:Ljava/lang/String;

.field private mUserToBeInsertedTo:Landroid/os/UserHandle;

.field private mViaNumber:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAccountHandle(Landroid/provider/CallLog$AddCallParams;)Landroid/telecom/PhoneAccountHandle;
    .registers 1

    iget-object p0, p0, Landroid/provider/CallLog$AddCallParams;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAddForAllUsers(Landroid/provider/CallLog$AddCallParams;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/provider/CallLog$AddCallParams;->mAddForAllUsers:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCallBlockReason(Landroid/provider/CallLog$AddCallParams;)I
    .registers 1

    iget p0, p0, Landroid/provider/CallLog$AddCallParams;->mCallBlockReason:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCallScreeningAppName(Landroid/provider/CallLog$AddCallParams;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Landroid/provider/CallLog$AddCallParams;->mCallScreeningAppName:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCallScreeningComponentName(Landroid/provider/CallLog$AddCallParams;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/provider/CallLog$AddCallParams;->mCallScreeningComponentName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCallType(Landroid/provider/CallLog$AddCallParams;)I
    .registers 1

    iget p0, p0, Landroid/provider/CallLog$AddCallParams;->mCallType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCallerInfo(Landroid/provider/CallLog$AddCallParams;)Landroid/telecom/CallerInfo;
    .registers 1

    iget-object p0, p0, Landroid/provider/CallLog$AddCallParams;->mCallerInfo:Landroid/telecom/CallerInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDataUsage(Landroid/provider/CallLog$AddCallParams;)J
    .registers 3

    iget-wide v0, p0, Landroid/provider/CallLog$AddCallParams;->mDataUsage:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmDuration(Landroid/provider/CallLog$AddCallParams;)I
    .registers 1

    iget p0, p0, Landroid/provider/CallLog$AddCallParams;->mDuration:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFeatures(Landroid/provider/CallLog$AddCallParams;)I
    .registers 1

    iget p0, p0, Landroid/provider/CallLog$AddCallParams;->mFeatures:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsPhoneAccountMigrationPending(Landroid/provider/CallLog$AddCallParams;)I
    .registers 1

    iget p0, p0, Landroid/provider/CallLog$AddCallParams;->mIsPhoneAccountMigrationPending:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsRead(Landroid/provider/CallLog$AddCallParams;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/provider/CallLog$AddCallParams;->mIsRead:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLatitude(Landroid/provider/CallLog$AddCallParams;)D
    .registers 3

    iget-wide v0, p0, Landroid/provider/CallLog$AddCallParams;->mLatitude:D

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmLongitude(Landroid/provider/CallLog$AddCallParams;)D
    .registers 3

    iget-wide v0, p0, Landroid/provider/CallLog$AddCallParams;->mLongitude:D

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmMissedReason(Landroid/provider/CallLog$AddCallParams;)J
    .registers 3

    iget-wide v0, p0, Landroid/provider/CallLog$AddCallParams;->mMissedReason:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmNumber(Landroid/provider/CallLog$AddCallParams;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/provider/CallLog$AddCallParams;->mNumber:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPictureUri(Landroid/provider/CallLog$AddCallParams;)Landroid/net/Uri;
    .registers 1

    iget-object p0, p0, Landroid/provider/CallLog$AddCallParams;->mPictureUri:Landroid/net/Uri;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPostDialDigits(Landroid/provider/CallLog$AddCallParams;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/provider/CallLog$AddCallParams;->mPostDialDigits:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPresentation(Landroid/provider/CallLog$AddCallParams;)I
    .registers 1

    iget p0, p0, Landroid/provider/CallLog$AddCallParams;->mPresentation:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPriority(Landroid/provider/CallLog$AddCallParams;)I
    .registers 1

    iget p0, p0, Landroid/provider/CallLog$AddCallParams;->mPriority:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmStart(Landroid/provider/CallLog$AddCallParams;)J
    .registers 3

    iget-wide v0, p0, Landroid/provider/CallLog$AddCallParams;->mStart:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmSubject(Landroid/provider/CallLog$AddCallParams;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/provider/CallLog$AddCallParams;->mSubject:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserToBeInsertedTo(Landroid/provider/CallLog$AddCallParams;)Landroid/os/UserHandle;
    .registers 1

    iget-object p0, p0, Landroid/provider/CallLog$AddCallParams;->mUserToBeInsertedTo:Landroid/os/UserHandle;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmViaNumber(Landroid/provider/CallLog$AddCallParams;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/provider/CallLog$AddCallParams;->mViaNumber:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmAddForAllUsers(Landroid/provider/CallLog$AddCallParams;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/provider/CallLog$AddCallParams;->mAddForAllUsers:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNumber(Landroid/provider/CallLog$AddCallParams;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Landroid/provider/CallLog$AddCallParams;->mNumber:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/telecom/CallerInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JIJZLandroid/os/UserHandle;ZILjava/lang/CharSequence;Ljava/lang/String;JILjava/lang/String;DDLandroid/net/Uri;I)V
    .registers 46
    .param p1, "callerInfo"    # Landroid/telecom/CallerInfo;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "postDialDigits"    # Ljava/lang/String;
    .param p4, "viaNumber"    # Ljava/lang/String;
    .param p5, "presentation"    # I
    .param p6, "callType"    # I
    .param p7, "features"    # I
    .param p8, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p9, "start"    # J
    .param p11, "duration"    # I
    .param p12, "dataUsage"    # J
    .param p14, "addForAllUsers"    # Z
    .param p15, "userToBeInsertedTo"    # Landroid/os/UserHandle;
    .param p16, "isRead"    # Z
    .param p17, "callBlockReason"    # I
    .param p18, "callScreeningAppName"    # Ljava/lang/CharSequence;
    .param p19, "callScreeningComponentName"    # Ljava/lang/String;
    .param p20, "missedReason"    # J
    .param p22, "priority"    # I
    .param p23, "subject"    # Ljava/lang/String;
    .param p24, "latitude"    # D
    .param p26, "longitude"    # D
    .param p28, "pictureUri"    # Landroid/net/Uri;
    .param p29, "isPhoneAccountMigrationPending"    # I

    .line 694
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 681
    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    iput-wide v1, v0, Landroid/provider/CallLog$AddCallParams;->mLatitude:D

    .line 682
    iput-wide v1, v0, Landroid/provider/CallLog$AddCallParams;->mLongitude:D

    .line 695
    move-object/from16 v1, p1

    iput-object v1, v0, Landroid/provider/CallLog$AddCallParams;->mCallerInfo:Landroid/telecom/CallerInfo;

    .line 696
    move-object/from16 v2, p2

    iput-object v2, v0, Landroid/provider/CallLog$AddCallParams;->mNumber:Ljava/lang/String;

    .line 697
    move-object/from16 v3, p3

    iput-object v3, v0, Landroid/provider/CallLog$AddCallParams;->mPostDialDigits:Ljava/lang/String;

    .line 698
    move-object/from16 v4, p4

    iput-object v4, v0, Landroid/provider/CallLog$AddCallParams;->mViaNumber:Ljava/lang/String;

    .line 699
    move/from16 v5, p5

    iput v5, v0, Landroid/provider/CallLog$AddCallParams;->mPresentation:I

    .line 700
    move/from16 v6, p6

    iput v6, v0, Landroid/provider/CallLog$AddCallParams;->mCallType:I

    .line 701
    move/from16 v7, p7

    iput v7, v0, Landroid/provider/CallLog$AddCallParams;->mFeatures:I

    .line 702
    move-object/from16 v8, p8

    iput-object v8, v0, Landroid/provider/CallLog$AddCallParams;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 703
    move-wide/from16 v9, p9

    iput-wide v9, v0, Landroid/provider/CallLog$AddCallParams;->mStart:J

    .line 704
    move/from16 v11, p11

    iput v11, v0, Landroid/provider/CallLog$AddCallParams;->mDuration:I

    .line 705
    move-wide/from16 v12, p12

    iput-wide v12, v0, Landroid/provider/CallLog$AddCallParams;->mDataUsage:J

    .line 706
    move/from16 v14, p14

    iput-boolean v14, v0, Landroid/provider/CallLog$AddCallParams;->mAddForAllUsers:Z

    .line 707
    move-object/from16 v15, p15

    iput-object v15, v0, Landroid/provider/CallLog$AddCallParams;->mUserToBeInsertedTo:Landroid/os/UserHandle;

    .line 708
    move/from16 v1, p16

    iput-boolean v1, v0, Landroid/provider/CallLog$AddCallParams;->mIsRead:Z

    .line 709
    move/from16 v1, p17

    iput v1, v0, Landroid/provider/CallLog$AddCallParams;->mCallBlockReason:I

    .line 710
    move-object/from16 v1, p18

    iput-object v1, v0, Landroid/provider/CallLog$AddCallParams;->mCallScreeningAppName:Ljava/lang/CharSequence;

    .line 711
    move-object/from16 v1, p19

    iput-object v1, v0, Landroid/provider/CallLog$AddCallParams;->mCallScreeningComponentName:Ljava/lang/String;

    .line 712
    move-wide/from16 v1, p20

    iput-wide v1, v0, Landroid/provider/CallLog$AddCallParams;->mMissedReason:J

    .line 713
    move/from16 v1, p22

    iput v1, v0, Landroid/provider/CallLog$AddCallParams;->mPriority:I

    .line 714
    move-object/from16 v2, p23

    iput-object v2, v0, Landroid/provider/CallLog$AddCallParams;->mSubject:Ljava/lang/String;

    .line 715
    move-wide/from16 v1, p24

    iput-wide v1, v0, Landroid/provider/CallLog$AddCallParams;->mLatitude:D

    .line 716
    move-wide/from16 v1, p26

    iput-wide v1, v0, Landroid/provider/CallLog$AddCallParams;->mLongitude:D

    .line 717
    move-object/from16 v1, p28

    iput-object v1, v0, Landroid/provider/CallLog$AddCallParams;->mPictureUri:Landroid/net/Uri;

    .line 718
    move/from16 v2, p29

    iput v2, v0, Landroid/provider/CallLog$AddCallParams;->mIsPhoneAccountMigrationPending:I

    .line 719
    return-void
.end method

.method synthetic constructor <init>(Landroid/telecom/CallerInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JIJZLandroid/os/UserHandle;ZILjava/lang/CharSequence;Ljava/lang/String;JILjava/lang/String;DDLandroid/net/Uri;ILandroid/provider/CallLog$AddCallParams-IA;)V
    .registers 31

    invoke-direct/range {p0 .. p29}, Landroid/provider/CallLog$AddCallParams;-><init>(Landroid/telecom/CallerInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/telecom/PhoneAccountHandle;JIJZLandroid/os/UserHandle;ZILjava/lang/CharSequence;Ljava/lang/String;JILjava/lang/String;DDLandroid/net/Uri;I)V

    return-void
.end method
