.class Lcom/google/android/mms/pdu/PduComposer$PositionMarker;
.super Ljava/lang/Object;
.source "PduComposer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/mms/pdu/PduComposer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PositionMarker"
.end annotation


# instance fields
.field private c_pos:I

.field private currentStackSize:I

.field final synthetic this$0:Lcom/google/android/mms/pdu/PduComposer;


# direct methods
.method static bridge synthetic -$$Nest$fputc_pos(Lcom/google/android/mms/pdu/PduComposer$PositionMarker;I)V
    .registers 2

    iput p1, p0, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->c_pos:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputcurrentStackSize(Lcom/google/android/mms/pdu/PduComposer$PositionMarker;I)V
    .registers 2

    iput p1, p0, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->currentStackSize:I

    return-void
.end method

.method private constructor <init>(Lcom/google/android/mms/pdu/PduComposer;)V
    .registers 2

    .line 1118
    iput-object p1, p0, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->this$0:Lcom/google/android/mms/pdu/PduComposer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/mms/pdu/PduComposer;Lcom/google/android/mms/pdu/PduComposer$PositionMarker-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;-><init>(Lcom/google/android/mms/pdu/PduComposer;)V

    return-void
.end method


# virtual methods
.method getLength()I
    .registers 3

    .line 1127
    iget v0, p0, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->currentStackSize:I

    iget-object v1, p0, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->this$0:Lcom/google/android/mms/pdu/PduComposer;

    invoke-static {v1}, Lcom/google/android/mms/pdu/PduComposer;->-$$Nest$fgetmStack(Lcom/google/android/mms/pdu/PduComposer;)Lcom/google/android/mms/pdu/PduComposer$BufferStack;

    move-result-object v1

    iget v1, v1, Lcom/google/android/mms/pdu/PduComposer$BufferStack;->stackSize:I

    if-ne v0, v1, :cond_14

    .line 1131
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->this$0:Lcom/google/android/mms/pdu/PduComposer;

    iget v0, v0, Lcom/google/android/mms/pdu/PduComposer;->mPosition:I

    iget v1, p0, Lcom/google/android/mms/pdu/PduComposer$PositionMarker;->c_pos:I

    sub-int/2addr v0, v1

    return v0

    .line 1128
    :cond_14
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "BUG: Invalid call to getLength()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
