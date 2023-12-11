.class public Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo$Builder;
.super Ljava/lang/Object;
.source "SemWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private action:I

.field private dispatching:I

.field private id:I

.field private intent:Landroid/content/Intent;

.field private keyCode:I

.field private ownerPackage:Ljava/lang/String;

.field private press:I

.field private userId:I


# direct methods
.method static bridge synthetic -$$Nest$fgetaction(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo$Builder;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo$Builder;->action:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetdispatching(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo$Builder;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo$Builder;->dispatching:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetid(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo$Builder;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo$Builder;->id:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetintent(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo$Builder;)Landroid/content/Intent;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo$Builder;->intent:Landroid/content/Intent;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetkeyCode(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo$Builder;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo$Builder;->keyCode:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetownerPackage(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo$Builder;->ownerPackage:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpress(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo$Builder;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo$Builder;->press:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetuserId(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo$Builder;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo$Builder;->userId:I

    return p0
.end method

.method public constructor <init>(IIILandroid/content/Intent;Ljava/lang/String;)V
    .registers 8
    .param p1, "press"    # I
    .param p2, "keyCode"    # I
    .param p3, "action"    # I
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "ownerPackage"    # Ljava/lang/String;

    .line 1452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1390
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo$Builder;->press:I

    .line 1395
    iput v0, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo$Builder;->id:I

    .line 1400
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo$Builder;->keyCode:I

    .line 1405
    iput v0, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo$Builder;->action:I

    .line 1410
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo$Builder;->intent:Landroid/content/Intent;

    .line 1415
    iput v1, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo$Builder;->dispatching:I

    .line 1420
    const/4 v1, -0x2

    iput v1, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo$Builder;->userId:I

    .line 1425
    iput-object v0, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo$Builder;->ownerPackage:Ljava/lang/String;

    .line 1453
    const/4 v0, 0x4

    if-eq p3, v0, :cond_25

    if-eqz p4, :cond_1d

    goto :goto_25

    .line 1454
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Intent is null. When the action is not ACTION_BLOCK_KEY_EVENT, you have to add intent parameter."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1458
    :cond_25
    :goto_25
    iput p1, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo$Builder;->press:I

    .line 1459
    iput p2, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo$Builder;->keyCode:I

    .line 1460
    iput p3, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo$Builder;->action:I

    .line 1461
    iput-object p4, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo$Builder;->intent:Landroid/content/Intent;

    .line 1462
    iput-object p5, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo$Builder;->ownerPackage:Ljava/lang/String;

    .line 1463
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_39

    .line 1464
    const/16 v0, 0x7d3

    iput v0, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo$Builder;->id:I

    .line 1466
    :cond_39
    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;
    .registers 3

    .line 1473
    new-instance v0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo;-><init>(Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo$Builder;Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo-IA;)V

    return-object v0
.end method

.method public setDispatching(I)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo$Builder;
    .registers 2
    .param p1, "dispatching"    # I

    .line 1488
    iput p1, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo$Builder;->dispatching:I

    .line 1489
    return-object p0
.end method

.method public setUserId(I)Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo$Builder;
    .registers 2
    .param p1, "userId"    # I

    .line 1501
    iput p1, p0, Lcom/samsung/android/view/SemWindowManager$KeyCustomizationInfo$Builder;->userId:I

    .line 1502
    return-object p0
.end method
