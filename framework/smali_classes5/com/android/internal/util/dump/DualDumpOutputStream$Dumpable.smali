.class abstract Lcom/android/internal/util/dump/DualDumpOutputStream$Dumpable;
.super Ljava/lang/Object;
.source "DualDumpOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/dump/DualDumpOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Dumpable"
.end annotation


# instance fields
.field final name:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/internal/util/dump/DualDumpOutputStream$Dumpable;->name:Ljava/lang/String;

    .line 52
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/android/internal/util/dump/DualDumpOutputStream$Dumpable-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/util/dump/DualDumpOutputStream$Dumpable;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method abstract print(Landroid/util/IndentingPrintWriter;Z)V
.end method
