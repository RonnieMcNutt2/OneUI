.class public final Landroid/companion/Telecom$Request$ControlAction;
.super Ljava/lang/Object;
.source "Telecom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/Telecom$Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ControlAction"
.end annotation


# static fields
.field public static final CONTROL:J = 0x10e00000002L

.field public static final ID:J = 0x10900000001L


# instance fields
.field final synthetic this$1:Landroid/companion/Telecom$Request;


# direct methods
.method public constructor <init>(Landroid/companion/Telecom$Request;)V
    .registers 2
    .param p1, "this$1"    # Landroid/companion/Telecom$Request;

    .line 89
    iput-object p1, p0, Landroid/companion/Telecom$Request$ControlAction;->this$1:Landroid/companion/Telecom$Request;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
