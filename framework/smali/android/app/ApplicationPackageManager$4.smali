.class Landroid/app/ApplicationPackageManager$4;
.super Ljava/lang/Object;
.source "ApplicationPackageManager.java"

# interfaces
.implements Landroid/app/ApplicationPackageManager$KnoxSdkHook;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ApplicationPackageManager;->getKnoxSdkHook()Landroid/app/ApplicationPackageManager$KnoxSdkHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ApplicationPackageManager;


# direct methods
.method constructor <init>(Landroid/app/ApplicationPackageManager;)V
    .registers 2
    .param p1, "this$0"    # Landroid/app/ApplicationPackageManager;

    .line 2613
    iput-object p1, p0, Landroid/app/ApplicationPackageManager$4;->this$0:Landroid/app/ApplicationPackageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
