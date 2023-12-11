.class public final Landroid/inputmethodservice/InputMethodServiceProto$InsetsProto;
.super Ljava/lang/Object;
.source "InputMethodServiceProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/InputMethodServiceProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "InsetsProto"
.end annotation


# static fields
.field public static final CONTENT_TOP_INSETS:J = 0x10500000001L

.field public static final TOUCHABLE_INSETS:J = 0x10500000003L

.field public static final TOUCHABLE_REGION:J = 0x10900000004L

.field public static final VISIBLE_TOP_INSETS:J = 0x10500000002L


# instance fields
.field final synthetic this$0:Landroid/inputmethodservice/InputMethodServiceProto;


# direct methods
.method public constructor <init>(Landroid/inputmethodservice/InputMethodServiceProto;)V
    .registers 2
    .param p1, "this$0"    # Landroid/inputmethodservice/InputMethodServiceProto;

    .line 11
    iput-object p1, p0, Landroid/inputmethodservice/InputMethodServiceProto$InsetsProto;->this$0:Landroid/inputmethodservice/InputMethodServiceProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
