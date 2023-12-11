.class public final Landroid/companion/Telecom$CallFacilitator;
.super Ljava/lang/Object;
.source "Telecom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/Telecom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CallFacilitator"
.end annotation


# static fields
.field public static final EXTENDED_IDENTIFIER:J = 0x10900000003L

.field public static final IDENTIFIER:J = 0x10900000002L

.field public static final NAME:J = 0x10900000001L


# instance fields
.field final synthetic this$0:Landroid/companion/Telecom;


# direct methods
.method public constructor <init>(Landroid/companion/Telecom;)V
    .registers 2
    .param p1, "this$0"    # Landroid/companion/Telecom;

    .line 108
    iput-object p1, p0, Landroid/companion/Telecom$CallFacilitator;->this$0:Landroid/companion/Telecom;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
