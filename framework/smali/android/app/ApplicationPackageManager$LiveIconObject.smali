.class public Landroid/app/ApplicationPackageManager$LiveIconObject;
.super Ljava/lang/Object;
.source "ApplicationPackageManager.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ApplicationPackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LiveIconObject"
.end annotation


# instance fields
.field private liveIcon:Ljava/lang/Object;

.field final synthetic this$0:Landroid/app/ApplicationPackageManager;


# direct methods
.method public constructor <init>(Landroid/app/ApplicationPackageManager;)V
    .registers 2
    .param p1, "this$0"    # Landroid/app/ApplicationPackageManager;

    .line 4489
    iput-object p1, p0, Landroid/app/ApplicationPackageManager$LiveIconObject;->this$0:Landroid/app/ApplicationPackageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 4500
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ApplicationPackageManager$LiveIconObject;

    .line 4501
    .local v0, "clone":Landroid/app/ApplicationPackageManager$LiveIconObject;
    return-object v0
.end method

.method public getLiveIcon()Ljava/lang/Object;
    .registers 2

    .line 4493
    iget-object v0, p0, Landroid/app/ApplicationPackageManager$LiveIconObject;->liveIcon:Ljava/lang/Object;

    return-object v0
.end method

.method public setLiveIcon(Ljava/lang/Object;)V
    .registers 2
    .param p1, "object"    # Ljava/lang/Object;

    .line 4497
    iput-object p1, p0, Landroid/app/ApplicationPackageManager$LiveIconObject;->liveIcon:Ljava/lang/Object;

    .line 4498
    return-void
.end method
