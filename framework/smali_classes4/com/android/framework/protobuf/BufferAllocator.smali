.class abstract Lcom/android/framework/protobuf/BufferAllocator;
.super Ljava/lang/Object;
.source "BufferAllocator.java"


# annotations
.annotation runtime Lcom/android/framework/protobuf/CheckReturnValue;
.end annotation


# static fields
.field private static final UNPOOLED:Lcom/android/framework/protobuf/BufferAllocator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 42
    new-instance v0, Lcom/android/framework/protobuf/BufferAllocator$1;

    invoke-direct {v0}, Lcom/android/framework/protobuf/BufferAllocator$1;-><init>()V

    sput-object v0, Lcom/android/framework/protobuf/BufferAllocator;->UNPOOLED:Lcom/android/framework/protobuf/BufferAllocator;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static unpooled()Lcom/android/framework/protobuf/BufferAllocator;
    .registers 1

    .line 57
    sget-object v0, Lcom/android/framework/protobuf/BufferAllocator;->UNPOOLED:Lcom/android/framework/protobuf/BufferAllocator;

    return-object v0
.end method


# virtual methods
.method public abstract allocateDirectBuffer(I)Lcom/android/framework/protobuf/AllocatedBuffer;
.end method

.method public abstract allocateHeapBuffer(I)Lcom/android/framework/protobuf/AllocatedBuffer;
.end method
