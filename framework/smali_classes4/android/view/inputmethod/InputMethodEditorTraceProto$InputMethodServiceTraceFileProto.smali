.class public final Landroid/view/inputmethod/InputMethodEditorTraceProto$InputMethodServiceTraceFileProto;
.super Ljava/lang/Object;
.source "InputMethodEditorTraceProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/InputMethodEditorTraceProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "InputMethodServiceTraceFileProto"
.end annotation


# static fields
.field public static final ENTRY:J = 0x20b00000002L

.field public static final INVALID:I = 0x0

.field public static final MAGIC_NUMBER:J = 0x10600000001L

.field public static final MAGIC_NUMBER_H:I = 0x45434152

.field public static final MAGIC_NUMBER_L:I = 0x54534d49

.field public static final REAL_TO_ELAPSED_TIME_OFFSET_NANOS:J = 0x10600000003L


# instance fields
.field final synthetic this$0:Landroid/view/inputmethod/InputMethodEditorTraceProto;


# direct methods
.method public constructor <init>(Landroid/view/inputmethod/InputMethodEditorTraceProto;)V
    .registers 2
    .param p1, "this$0"    # Landroid/view/inputmethod/InputMethodEditorTraceProto;

    .line 75
    iput-object p1, p0, Landroid/view/inputmethod/InputMethodEditorTraceProto$InputMethodServiceTraceFileProto;->this$0:Landroid/view/inputmethod/InputMethodEditorTraceProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
