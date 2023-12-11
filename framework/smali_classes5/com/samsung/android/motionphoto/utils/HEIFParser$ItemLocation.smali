.class Lcom/samsung/android/motionphoto/utils/HEIFParser$ItemLocation;
.super Ljava/lang/Object;
.source "HEIFParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/motionphoto/utils/HEIFParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemLocation"
.end annotation


# instance fields
.field public base_offset:J

.field public construction_method:I

.field public itemID:J

.field public length:J

.field public offset:J

.field final synthetic this$0:Lcom/samsung/android/motionphoto/utils/HEIFParser;


# direct methods
.method constructor <init>(Lcom/samsung/android/motionphoto/utils/HEIFParser;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 26
    iput-object p1, p0, Lcom/samsung/android/motionphoto/utils/HEIFParser$ItemLocation;->this$0:Lcom/samsung/android/motionphoto/utils/HEIFParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
