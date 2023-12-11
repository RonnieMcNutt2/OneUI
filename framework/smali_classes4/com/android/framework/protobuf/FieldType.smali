.class public final enum Lcom/android/framework/protobuf/FieldType;
.super Ljava/lang/Enum;
.source "FieldType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/framework/protobuf/FieldType$Collection;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/framework/protobuf/FieldType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/framework/protobuf/FieldType;

.field public static final enum BOOL:Lcom/android/framework/protobuf/FieldType;

.field public static final enum BOOL_LIST:Lcom/android/framework/protobuf/FieldType;

.field public static final enum BOOL_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

.field public static final enum BYTES:Lcom/android/framework/protobuf/FieldType;

.field public static final enum BYTES_LIST:Lcom/android/framework/protobuf/FieldType;

.field public static final enum DOUBLE:Lcom/android/framework/protobuf/FieldType;

.field public static final enum DOUBLE_LIST:Lcom/android/framework/protobuf/FieldType;

.field public static final enum DOUBLE_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

.field private static final EMPTY_TYPES:[Ljava/lang/reflect/Type;

.field public static final enum ENUM:Lcom/android/framework/protobuf/FieldType;

.field public static final enum ENUM_LIST:Lcom/android/framework/protobuf/FieldType;

.field public static final enum ENUM_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

.field public static final enum FIXED32:Lcom/android/framework/protobuf/FieldType;

.field public static final enum FIXED32_LIST:Lcom/android/framework/protobuf/FieldType;

.field public static final enum FIXED32_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

.field public static final enum FIXED64:Lcom/android/framework/protobuf/FieldType;

.field public static final enum FIXED64_LIST:Lcom/android/framework/protobuf/FieldType;

.field public static final enum FIXED64_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

.field public static final enum FLOAT:Lcom/android/framework/protobuf/FieldType;

.field public static final enum FLOAT_LIST:Lcom/android/framework/protobuf/FieldType;

.field public static final enum FLOAT_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

.field public static final enum GROUP:Lcom/android/framework/protobuf/FieldType;

.field public static final enum GROUP_LIST:Lcom/android/framework/protobuf/FieldType;

.field public static final enum INT32:Lcom/android/framework/protobuf/FieldType;

.field public static final enum INT32_LIST:Lcom/android/framework/protobuf/FieldType;

.field public static final enum INT32_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

.field public static final enum INT64:Lcom/android/framework/protobuf/FieldType;

.field public static final enum INT64_LIST:Lcom/android/framework/protobuf/FieldType;

.field public static final enum INT64_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

.field public static final enum MAP:Lcom/android/framework/protobuf/FieldType;

.field public static final enum MESSAGE:Lcom/android/framework/protobuf/FieldType;

.field public static final enum MESSAGE_LIST:Lcom/android/framework/protobuf/FieldType;

.field public static final enum SFIXED32:Lcom/android/framework/protobuf/FieldType;

.field public static final enum SFIXED32_LIST:Lcom/android/framework/protobuf/FieldType;

.field public static final enum SFIXED32_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

.field public static final enum SFIXED64:Lcom/android/framework/protobuf/FieldType;

.field public static final enum SFIXED64_LIST:Lcom/android/framework/protobuf/FieldType;

.field public static final enum SFIXED64_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

.field public static final enum SINT32:Lcom/android/framework/protobuf/FieldType;

.field public static final enum SINT32_LIST:Lcom/android/framework/protobuf/FieldType;

.field public static final enum SINT32_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

.field public static final enum SINT64:Lcom/android/framework/protobuf/FieldType;

.field public static final enum SINT64_LIST:Lcom/android/framework/protobuf/FieldType;

.field public static final enum SINT64_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

.field public static final enum STRING:Lcom/android/framework/protobuf/FieldType;

.field public static final enum STRING_LIST:Lcom/android/framework/protobuf/FieldType;

.field public static final enum UINT32:Lcom/android/framework/protobuf/FieldType;

.field public static final enum UINT32_LIST:Lcom/android/framework/protobuf/FieldType;

.field public static final enum UINT32_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

.field public static final enum UINT64:Lcom/android/framework/protobuf/FieldType;

.field public static final enum UINT64_LIST:Lcom/android/framework/protobuf/FieldType;

.field public static final enum UINT64_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

.field private static final VALUES:[Lcom/android/framework/protobuf/FieldType;


# instance fields
.field private final collection:Lcom/android/framework/protobuf/FieldType$Collection;

.field private final elementType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final id:I

.field private final javaType:Lcom/android/framework/protobuf/JavaType;

.field private final primitiveScalar:Z


# direct methods
.method private static synthetic $values()[Lcom/android/framework/protobuf/FieldType;
    .registers 51

    .line 40
    sget-object v0, Lcom/android/framework/protobuf/FieldType;->DOUBLE:Lcom/android/framework/protobuf/FieldType;

    sget-object v1, Lcom/android/framework/protobuf/FieldType;->FLOAT:Lcom/android/framework/protobuf/FieldType;

    sget-object v2, Lcom/android/framework/protobuf/FieldType;->INT64:Lcom/android/framework/protobuf/FieldType;

    sget-object v3, Lcom/android/framework/protobuf/FieldType;->UINT64:Lcom/android/framework/protobuf/FieldType;

    sget-object v4, Lcom/android/framework/protobuf/FieldType;->INT32:Lcom/android/framework/protobuf/FieldType;

    sget-object v5, Lcom/android/framework/protobuf/FieldType;->FIXED64:Lcom/android/framework/protobuf/FieldType;

    sget-object v6, Lcom/android/framework/protobuf/FieldType;->FIXED32:Lcom/android/framework/protobuf/FieldType;

    sget-object v7, Lcom/android/framework/protobuf/FieldType;->BOOL:Lcom/android/framework/protobuf/FieldType;

    sget-object v8, Lcom/android/framework/protobuf/FieldType;->STRING:Lcom/android/framework/protobuf/FieldType;

    sget-object v9, Lcom/android/framework/protobuf/FieldType;->MESSAGE:Lcom/android/framework/protobuf/FieldType;

    sget-object v10, Lcom/android/framework/protobuf/FieldType;->BYTES:Lcom/android/framework/protobuf/FieldType;

    sget-object v11, Lcom/android/framework/protobuf/FieldType;->UINT32:Lcom/android/framework/protobuf/FieldType;

    sget-object v12, Lcom/android/framework/protobuf/FieldType;->ENUM:Lcom/android/framework/protobuf/FieldType;

    sget-object v13, Lcom/android/framework/protobuf/FieldType;->SFIXED32:Lcom/android/framework/protobuf/FieldType;

    sget-object v14, Lcom/android/framework/protobuf/FieldType;->SFIXED64:Lcom/android/framework/protobuf/FieldType;

    sget-object v15, Lcom/android/framework/protobuf/FieldType;->SINT32:Lcom/android/framework/protobuf/FieldType;

    sget-object v16, Lcom/android/framework/protobuf/FieldType;->SINT64:Lcom/android/framework/protobuf/FieldType;

    sget-object v17, Lcom/android/framework/protobuf/FieldType;->GROUP:Lcom/android/framework/protobuf/FieldType;

    sget-object v18, Lcom/android/framework/protobuf/FieldType;->DOUBLE_LIST:Lcom/android/framework/protobuf/FieldType;

    sget-object v19, Lcom/android/framework/protobuf/FieldType;->FLOAT_LIST:Lcom/android/framework/protobuf/FieldType;

    sget-object v20, Lcom/android/framework/protobuf/FieldType;->INT64_LIST:Lcom/android/framework/protobuf/FieldType;

    sget-object v21, Lcom/android/framework/protobuf/FieldType;->UINT64_LIST:Lcom/android/framework/protobuf/FieldType;

    sget-object v22, Lcom/android/framework/protobuf/FieldType;->INT32_LIST:Lcom/android/framework/protobuf/FieldType;

    sget-object v23, Lcom/android/framework/protobuf/FieldType;->FIXED64_LIST:Lcom/android/framework/protobuf/FieldType;

    sget-object v24, Lcom/android/framework/protobuf/FieldType;->FIXED32_LIST:Lcom/android/framework/protobuf/FieldType;

    sget-object v25, Lcom/android/framework/protobuf/FieldType;->BOOL_LIST:Lcom/android/framework/protobuf/FieldType;

    sget-object v26, Lcom/android/framework/protobuf/FieldType;->STRING_LIST:Lcom/android/framework/protobuf/FieldType;

    sget-object v27, Lcom/android/framework/protobuf/FieldType;->MESSAGE_LIST:Lcom/android/framework/protobuf/FieldType;

    sget-object v28, Lcom/android/framework/protobuf/FieldType;->BYTES_LIST:Lcom/android/framework/protobuf/FieldType;

    sget-object v29, Lcom/android/framework/protobuf/FieldType;->UINT32_LIST:Lcom/android/framework/protobuf/FieldType;

    sget-object v30, Lcom/android/framework/protobuf/FieldType;->ENUM_LIST:Lcom/android/framework/protobuf/FieldType;

    sget-object v31, Lcom/android/framework/protobuf/FieldType;->SFIXED32_LIST:Lcom/android/framework/protobuf/FieldType;

    sget-object v32, Lcom/android/framework/protobuf/FieldType;->SFIXED64_LIST:Lcom/android/framework/protobuf/FieldType;

    sget-object v33, Lcom/android/framework/protobuf/FieldType;->SINT32_LIST:Lcom/android/framework/protobuf/FieldType;

    sget-object v34, Lcom/android/framework/protobuf/FieldType;->SINT64_LIST:Lcom/android/framework/protobuf/FieldType;

    sget-object v35, Lcom/android/framework/protobuf/FieldType;->DOUBLE_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

    sget-object v36, Lcom/android/framework/protobuf/FieldType;->FLOAT_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

    sget-object v37, Lcom/android/framework/protobuf/FieldType;->INT64_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

    sget-object v38, Lcom/android/framework/protobuf/FieldType;->UINT64_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

    sget-object v39, Lcom/android/framework/protobuf/FieldType;->INT32_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

    sget-object v40, Lcom/android/framework/protobuf/FieldType;->FIXED64_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

    sget-object v41, Lcom/android/framework/protobuf/FieldType;->FIXED32_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

    sget-object v42, Lcom/android/framework/protobuf/FieldType;->BOOL_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

    sget-object v43, Lcom/android/framework/protobuf/FieldType;->UINT32_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

    sget-object v44, Lcom/android/framework/protobuf/FieldType;->ENUM_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

    sget-object v45, Lcom/android/framework/protobuf/FieldType;->SFIXED32_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

    sget-object v46, Lcom/android/framework/protobuf/FieldType;->SFIXED64_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

    sget-object v47, Lcom/android/framework/protobuf/FieldType;->SINT32_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

    sget-object v48, Lcom/android/framework/protobuf/FieldType;->SINT64_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

    sget-object v49, Lcom/android/framework/protobuf/FieldType;->GROUP_LIST:Lcom/android/framework/protobuf/FieldType;

    sget-object v50, Lcom/android/framework/protobuf/FieldType;->MAP:Lcom/android/framework/protobuf/FieldType;

    filled-new-array/range {v0 .. v50}, [Lcom/android/framework/protobuf/FieldType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 13

    .line 42
    new-instance v6, Lcom/android/framework/protobuf/FieldType;

    const-string v1, "DOUBLE"

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v4, Lcom/android/framework/protobuf/FieldType$Collection;->SCALAR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v5, Lcom/android/framework/protobuf/JavaType;->DOUBLE:Lcom/android/framework/protobuf/JavaType;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v6, Lcom/android/framework/protobuf/FieldType;->DOUBLE:Lcom/android/framework/protobuf/FieldType;

    .line 43
    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    const-string v8, "FLOAT"

    const/4 v9, 0x1

    const/4 v10, 0x1

    sget-object v11, Lcom/android/framework/protobuf/FieldType$Collection;->SCALAR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v12, Lcom/android/framework/protobuf/JavaType;->FLOAT:Lcom/android/framework/protobuf/JavaType;

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->FLOAT:Lcom/android/framework/protobuf/FieldType;

    .line 44
    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    const-string v2, "INT64"

    const/4 v3, 0x2

    const/4 v4, 0x2

    sget-object v5, Lcom/android/framework/protobuf/FieldType$Collection;->SCALAR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v6, Lcom/android/framework/protobuf/JavaType;->LONG:Lcom/android/framework/protobuf/JavaType;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->INT64:Lcom/android/framework/protobuf/FieldType;

    .line 45
    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    const-string v8, "UINT64"

    const/4 v9, 0x3

    const/4 v10, 0x3

    sget-object v11, Lcom/android/framework/protobuf/FieldType$Collection;->SCALAR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v12, Lcom/android/framework/protobuf/JavaType;->LONG:Lcom/android/framework/protobuf/JavaType;

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->UINT64:Lcom/android/framework/protobuf/FieldType;

    .line 46
    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    const-string v2, "INT32"

    const/4 v3, 0x4

    const/4 v4, 0x4

    sget-object v5, Lcom/android/framework/protobuf/FieldType$Collection;->SCALAR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v6, Lcom/android/framework/protobuf/JavaType;->INT:Lcom/android/framework/protobuf/JavaType;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->INT32:Lcom/android/framework/protobuf/FieldType;

    .line 47
    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    const-string v8, "FIXED64"

    const/4 v9, 0x5

    const/4 v10, 0x5

    sget-object v11, Lcom/android/framework/protobuf/FieldType$Collection;->SCALAR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v12, Lcom/android/framework/protobuf/JavaType;->LONG:Lcom/android/framework/protobuf/JavaType;

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->FIXED64:Lcom/android/framework/protobuf/FieldType;

    .line 48
    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    const-string v2, "FIXED32"

    const/4 v3, 0x6

    const/4 v4, 0x6

    sget-object v5, Lcom/android/framework/protobuf/FieldType$Collection;->SCALAR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v6, Lcom/android/framework/protobuf/JavaType;->INT:Lcom/android/framework/protobuf/JavaType;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->FIXED32:Lcom/android/framework/protobuf/FieldType;

    .line 49
    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    const-string v8, "BOOL"

    const/4 v9, 0x7

    const/4 v10, 0x7

    sget-object v11, Lcom/android/framework/protobuf/FieldType$Collection;->SCALAR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v12, Lcom/android/framework/protobuf/JavaType;->BOOLEAN:Lcom/android/framework/protobuf/JavaType;

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->BOOL:Lcom/android/framework/protobuf/FieldType;

    .line 50
    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    const-string v2, "STRING"

    const/16 v3, 0x8

    const/16 v4, 0x8

    sget-object v5, Lcom/android/framework/protobuf/FieldType$Collection;->SCALAR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v6, Lcom/android/framework/protobuf/JavaType;->STRING:Lcom/android/framework/protobuf/JavaType;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->STRING:Lcom/android/framework/protobuf/FieldType;

    .line 51
    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    const-string v8, "MESSAGE"

    const/16 v9, 0x9

    const/16 v10, 0x9

    sget-object v11, Lcom/android/framework/protobuf/FieldType$Collection;->SCALAR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v12, Lcom/android/framework/protobuf/JavaType;->MESSAGE:Lcom/android/framework/protobuf/JavaType;

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->MESSAGE:Lcom/android/framework/protobuf/FieldType;

    .line 52
    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    const-string v2, "BYTES"

    const/16 v3, 0xa

    const/16 v4, 0xa

    sget-object v5, Lcom/android/framework/protobuf/FieldType$Collection;->SCALAR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v6, Lcom/android/framework/protobuf/JavaType;->BYTE_STRING:Lcom/android/framework/protobuf/JavaType;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->BYTES:Lcom/android/framework/protobuf/FieldType;

    .line 53
    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    const-string v8, "UINT32"

    const/16 v9, 0xb

    const/16 v10, 0xb

    sget-object v11, Lcom/android/framework/protobuf/FieldType$Collection;->SCALAR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v12, Lcom/android/framework/protobuf/JavaType;->INT:Lcom/android/framework/protobuf/JavaType;

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->UINT32:Lcom/android/framework/protobuf/FieldType;

    .line 54
    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    const-string v2, "ENUM"

    const/16 v3, 0xc

    const/16 v4, 0xc

    sget-object v5, Lcom/android/framework/protobuf/FieldType$Collection;->SCALAR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v6, Lcom/android/framework/protobuf/JavaType;->ENUM:Lcom/android/framework/protobuf/JavaType;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->ENUM:Lcom/android/framework/protobuf/FieldType;

    .line 55
    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    const-string v8, "SFIXED32"

    const/16 v9, 0xd

    const/16 v10, 0xd

    sget-object v11, Lcom/android/framework/protobuf/FieldType$Collection;->SCALAR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v12, Lcom/android/framework/protobuf/JavaType;->INT:Lcom/android/framework/protobuf/JavaType;

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->SFIXED32:Lcom/android/framework/protobuf/FieldType;

    .line 56
    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    const-string v2, "SFIXED64"

    const/16 v3, 0xe

    const/16 v4, 0xe

    sget-object v5, Lcom/android/framework/protobuf/FieldType$Collection;->SCALAR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v6, Lcom/android/framework/protobuf/JavaType;->LONG:Lcom/android/framework/protobuf/JavaType;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->SFIXED64:Lcom/android/framework/protobuf/FieldType;

    .line 57
    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    const-string v8, "SINT32"

    const/16 v9, 0xf

    const/16 v10, 0xf

    sget-object v11, Lcom/android/framework/protobuf/FieldType$Collection;->SCALAR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v12, Lcom/android/framework/protobuf/JavaType;->INT:Lcom/android/framework/protobuf/JavaType;

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->SINT32:Lcom/android/framework/protobuf/FieldType;

    .line 58
    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    const-string v2, "SINT64"

    const/16 v3, 0x10

    const/16 v4, 0x10

    sget-object v5, Lcom/android/framework/protobuf/FieldType$Collection;->SCALAR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v6, Lcom/android/framework/protobuf/JavaType;->LONG:Lcom/android/framework/protobuf/JavaType;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->SINT64:Lcom/android/framework/protobuf/FieldType;

    .line 59
    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    const-string v8, "GROUP"

    const/16 v9, 0x11

    const/16 v10, 0x11

    sget-object v11, Lcom/android/framework/protobuf/FieldType$Collection;->SCALAR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v12, Lcom/android/framework/protobuf/JavaType;->MESSAGE:Lcom/android/framework/protobuf/JavaType;

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->GROUP:Lcom/android/framework/protobuf/FieldType;

    .line 60
    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    const-string v2, "DOUBLE_LIST"

    const/16 v3, 0x12

    const/16 v4, 0x12

    sget-object v5, Lcom/android/framework/protobuf/FieldType$Collection;->VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v6, Lcom/android/framework/protobuf/JavaType;->DOUBLE:Lcom/android/framework/protobuf/JavaType;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->DOUBLE_LIST:Lcom/android/framework/protobuf/FieldType;

    .line 61
    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    const-string v8, "FLOAT_LIST"

    const/16 v9, 0x13

    const/16 v10, 0x13

    sget-object v11, Lcom/android/framework/protobuf/FieldType$Collection;->VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v12, Lcom/android/framework/protobuf/JavaType;->FLOAT:Lcom/android/framework/protobuf/JavaType;

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->FLOAT_LIST:Lcom/android/framework/protobuf/FieldType;

    .line 62
    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    const-string v2, "INT64_LIST"

    const/16 v3, 0x14

    const/16 v4, 0x14

    sget-object v5, Lcom/android/framework/protobuf/FieldType$Collection;->VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v6, Lcom/android/framework/protobuf/JavaType;->LONG:Lcom/android/framework/protobuf/JavaType;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->INT64_LIST:Lcom/android/framework/protobuf/FieldType;

    .line 63
    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    const-string v8, "UINT64_LIST"

    const/16 v9, 0x15

    const/16 v10, 0x15

    sget-object v11, Lcom/android/framework/protobuf/FieldType$Collection;->VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v12, Lcom/android/framework/protobuf/JavaType;->LONG:Lcom/android/framework/protobuf/JavaType;

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->UINT64_LIST:Lcom/android/framework/protobuf/FieldType;

    .line 64
    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    const-string v2, "INT32_LIST"

    const/16 v3, 0x16

    const/16 v4, 0x16

    sget-object v5, Lcom/android/framework/protobuf/FieldType$Collection;->VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v6, Lcom/android/framework/protobuf/JavaType;->INT:Lcom/android/framework/protobuf/JavaType;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->INT32_LIST:Lcom/android/framework/protobuf/FieldType;

    .line 65
    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    const-string v8, "FIXED64_LIST"

    const/16 v9, 0x17

    const/16 v10, 0x17

    sget-object v11, Lcom/android/framework/protobuf/FieldType$Collection;->VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v12, Lcom/android/framework/protobuf/JavaType;->LONG:Lcom/android/framework/protobuf/JavaType;

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->FIXED64_LIST:Lcom/android/framework/protobuf/FieldType;

    .line 66
    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    const-string v2, "FIXED32_LIST"

    const/16 v3, 0x18

    const/16 v4, 0x18

    sget-object v5, Lcom/android/framework/protobuf/FieldType$Collection;->VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v6, Lcom/android/framework/protobuf/JavaType;->INT:Lcom/android/framework/protobuf/JavaType;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->FIXED32_LIST:Lcom/android/framework/protobuf/FieldType;

    .line 67
    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    const-string v8, "BOOL_LIST"

    const/16 v9, 0x19

    const/16 v10, 0x19

    sget-object v11, Lcom/android/framework/protobuf/FieldType$Collection;->VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v12, Lcom/android/framework/protobuf/JavaType;->BOOLEAN:Lcom/android/framework/protobuf/JavaType;

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->BOOL_LIST:Lcom/android/framework/protobuf/FieldType;

    .line 68
    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    const-string v2, "STRING_LIST"

    const/16 v3, 0x1a

    const/16 v4, 0x1a

    sget-object v5, Lcom/android/framework/protobuf/FieldType$Collection;->VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v6, Lcom/android/framework/protobuf/JavaType;->STRING:Lcom/android/framework/protobuf/JavaType;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->STRING_LIST:Lcom/android/framework/protobuf/FieldType;

    .line 69
    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    const-string v8, "MESSAGE_LIST"

    const/16 v9, 0x1b

    const/16 v10, 0x1b

    sget-object v11, Lcom/android/framework/protobuf/FieldType$Collection;->VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v12, Lcom/android/framework/protobuf/JavaType;->MESSAGE:Lcom/android/framework/protobuf/JavaType;

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->MESSAGE_LIST:Lcom/android/framework/protobuf/FieldType;

    .line 70
    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    const-string v2, "BYTES_LIST"

    const/16 v3, 0x1c

    const/16 v4, 0x1c

    sget-object v5, Lcom/android/framework/protobuf/FieldType$Collection;->VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v6, Lcom/android/framework/protobuf/JavaType;->BYTE_STRING:Lcom/android/framework/protobuf/JavaType;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->BYTES_LIST:Lcom/android/framework/protobuf/FieldType;

    .line 71
    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    const-string v8, "UINT32_LIST"

    const/16 v9, 0x1d

    const/16 v10, 0x1d

    sget-object v11, Lcom/android/framework/protobuf/FieldType$Collection;->VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v12, Lcom/android/framework/protobuf/JavaType;->INT:Lcom/android/framework/protobuf/JavaType;

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->UINT32_LIST:Lcom/android/framework/protobuf/FieldType;

    .line 72
    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    const-string v2, "ENUM_LIST"

    const/16 v3, 0x1e

    const/16 v4, 0x1e

    sget-object v5, Lcom/android/framework/protobuf/FieldType$Collection;->VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v6, Lcom/android/framework/protobuf/JavaType;->ENUM:Lcom/android/framework/protobuf/JavaType;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->ENUM_LIST:Lcom/android/framework/protobuf/FieldType;

    .line 73
    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    const-string v8, "SFIXED32_LIST"

    const/16 v9, 0x1f

    const/16 v10, 0x1f

    sget-object v11, Lcom/android/framework/protobuf/FieldType$Collection;->VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v12, Lcom/android/framework/protobuf/JavaType;->INT:Lcom/android/framework/protobuf/JavaType;

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->SFIXED32_LIST:Lcom/android/framework/protobuf/FieldType;

    .line 74
    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    const-string v2, "SFIXED64_LIST"

    const/16 v3, 0x20

    const/16 v4, 0x20

    sget-object v5, Lcom/android/framework/protobuf/FieldType$Collection;->VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v6, Lcom/android/framework/protobuf/JavaType;->LONG:Lcom/android/framework/protobuf/JavaType;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->SFIXED64_LIST:Lcom/android/framework/protobuf/FieldType;

    .line 75
    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    const-string v8, "SINT32_LIST"

    const/16 v9, 0x21

    const/16 v10, 0x21

    sget-object v11, Lcom/android/framework/protobuf/FieldType$Collection;->VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v12, Lcom/android/framework/protobuf/JavaType;->INT:Lcom/android/framework/protobuf/JavaType;

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->SINT32_LIST:Lcom/android/framework/protobuf/FieldType;

    .line 76
    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    const-string v2, "SINT64_LIST"

    const/16 v3, 0x22

    const/16 v4, 0x22

    sget-object v5, Lcom/android/framework/protobuf/FieldType$Collection;->VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v6, Lcom/android/framework/protobuf/JavaType;->LONG:Lcom/android/framework/protobuf/JavaType;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->SINT64_LIST:Lcom/android/framework/protobuf/FieldType;

    .line 77
    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    const-string v8, "DOUBLE_LIST_PACKED"

    const/16 v9, 0x23

    const/16 v10, 0x23

    sget-object v11, Lcom/android/framework/protobuf/FieldType$Collection;->PACKED_VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v12, Lcom/android/framework/protobuf/JavaType;->DOUBLE:Lcom/android/framework/protobuf/JavaType;

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->DOUBLE_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

    .line 78
    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    const-string v2, "FLOAT_LIST_PACKED"

    const/16 v3, 0x24

    const/16 v4, 0x24

    sget-object v5, Lcom/android/framework/protobuf/FieldType$Collection;->PACKED_VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v6, Lcom/android/framework/protobuf/JavaType;->FLOAT:Lcom/android/framework/protobuf/JavaType;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->FLOAT_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

    .line 79
    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    const-string v8, "INT64_LIST_PACKED"

    const/16 v9, 0x25

    const/16 v10, 0x25

    sget-object v11, Lcom/android/framework/protobuf/FieldType$Collection;->PACKED_VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v12, Lcom/android/framework/protobuf/JavaType;->LONG:Lcom/android/framework/protobuf/JavaType;

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->INT64_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

    .line 80
    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    const-string v2, "UINT64_LIST_PACKED"

    const/16 v3, 0x26

    const/16 v4, 0x26

    sget-object v5, Lcom/android/framework/protobuf/FieldType$Collection;->PACKED_VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v6, Lcom/android/framework/protobuf/JavaType;->LONG:Lcom/android/framework/protobuf/JavaType;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->UINT64_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

    .line 81
    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    const-string v8, "INT32_LIST_PACKED"

    const/16 v9, 0x27

    const/16 v10, 0x27

    sget-object v11, Lcom/android/framework/protobuf/FieldType$Collection;->PACKED_VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v12, Lcom/android/framework/protobuf/JavaType;->INT:Lcom/android/framework/protobuf/JavaType;

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->INT32_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

    .line 82
    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    const-string v2, "FIXED64_LIST_PACKED"

    const/16 v3, 0x28

    const/16 v4, 0x28

    sget-object v5, Lcom/android/framework/protobuf/FieldType$Collection;->PACKED_VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v6, Lcom/android/framework/protobuf/JavaType;->LONG:Lcom/android/framework/protobuf/JavaType;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->FIXED64_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

    .line 83
    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    const-string v8, "FIXED32_LIST_PACKED"

    const/16 v9, 0x29

    const/16 v10, 0x29

    sget-object v11, Lcom/android/framework/protobuf/FieldType$Collection;->PACKED_VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v12, Lcom/android/framework/protobuf/JavaType;->INT:Lcom/android/framework/protobuf/JavaType;

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->FIXED32_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

    .line 84
    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    const-string v2, "BOOL_LIST_PACKED"

    const/16 v3, 0x2a

    const/16 v4, 0x2a

    sget-object v5, Lcom/android/framework/protobuf/FieldType$Collection;->PACKED_VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v6, Lcom/android/framework/protobuf/JavaType;->BOOLEAN:Lcom/android/framework/protobuf/JavaType;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->BOOL_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

    .line 85
    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    const-string v8, "UINT32_LIST_PACKED"

    const/16 v9, 0x2b

    const/16 v10, 0x2b

    sget-object v11, Lcom/android/framework/protobuf/FieldType$Collection;->PACKED_VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v12, Lcom/android/framework/protobuf/JavaType;->INT:Lcom/android/framework/protobuf/JavaType;

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->UINT32_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

    .line 86
    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    const-string v2, "ENUM_LIST_PACKED"

    const/16 v3, 0x2c

    const/16 v4, 0x2c

    sget-object v5, Lcom/android/framework/protobuf/FieldType$Collection;->PACKED_VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v6, Lcom/android/framework/protobuf/JavaType;->ENUM:Lcom/android/framework/protobuf/JavaType;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->ENUM_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

    .line 87
    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    const-string v8, "SFIXED32_LIST_PACKED"

    const/16 v9, 0x2d

    const/16 v10, 0x2d

    sget-object v11, Lcom/android/framework/protobuf/FieldType$Collection;->PACKED_VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v12, Lcom/android/framework/protobuf/JavaType;->INT:Lcom/android/framework/protobuf/JavaType;

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->SFIXED32_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

    .line 88
    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    const-string v2, "SFIXED64_LIST_PACKED"

    const/16 v3, 0x2e

    const/16 v4, 0x2e

    sget-object v5, Lcom/android/framework/protobuf/FieldType$Collection;->PACKED_VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v6, Lcom/android/framework/protobuf/JavaType;->LONG:Lcom/android/framework/protobuf/JavaType;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->SFIXED64_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

    .line 89
    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    const-string v8, "SINT32_LIST_PACKED"

    const/16 v9, 0x2f

    const/16 v10, 0x2f

    sget-object v11, Lcom/android/framework/protobuf/FieldType$Collection;->PACKED_VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v12, Lcom/android/framework/protobuf/JavaType;->INT:Lcom/android/framework/protobuf/JavaType;

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->SINT32_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

    .line 90
    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    const-string v2, "SINT64_LIST_PACKED"

    const/16 v3, 0x30

    const/16 v4, 0x30

    sget-object v5, Lcom/android/framework/protobuf/FieldType$Collection;->PACKED_VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v6, Lcom/android/framework/protobuf/JavaType;->LONG:Lcom/android/framework/protobuf/JavaType;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->SINT64_LIST_PACKED:Lcom/android/framework/protobuf/FieldType;

    .line 91
    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    const-string v8, "GROUP_LIST"

    const/16 v9, 0x31

    const/16 v10, 0x31

    sget-object v11, Lcom/android/framework/protobuf/FieldType$Collection;->VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v12, Lcom/android/framework/protobuf/JavaType;->MESSAGE:Lcom/android/framework/protobuf/JavaType;

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->GROUP_LIST:Lcom/android/framework/protobuf/FieldType;

    .line 92
    new-instance v0, Lcom/android/framework/protobuf/FieldType;

    const-string v2, "MAP"

    const/16 v3, 0x32

    const/16 v4, 0x32

    sget-object v5, Lcom/android/framework/protobuf/FieldType$Collection;->MAP:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v6, Lcom/android/framework/protobuf/JavaType;->VOID:Lcom/android/framework/protobuf/JavaType;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/framework/protobuf/FieldType;-><init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->MAP:Lcom/android/framework/protobuf/FieldType;

    .line 40
    invoke-static {}, Lcom/android/framework/protobuf/FieldType;->$values()[Lcom/android/framework/protobuf/FieldType;

    move-result-object v0

    sput-object v0, Lcom/android/framework/protobuf/FieldType;->$VALUES:[Lcom/android/framework/protobuf/FieldType;

    .line 215
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/reflect/Type;

    sput-object v1, Lcom/android/framework/protobuf/FieldType;->EMPTY_TYPES:[Ljava/lang/reflect/Type;

    .line 218
    invoke-static {}, Lcom/android/framework/protobuf/FieldType;->values()[Lcom/android/framework/protobuf/FieldType;

    move-result-object v1

    .line 219
    .local v1, "values":[Lcom/android/framework/protobuf/FieldType;
    array-length v2, v1

    new-array v2, v2, [Lcom/android/framework/protobuf/FieldType;

    sput-object v2, Lcom/android/framework/protobuf/FieldType;->VALUES:[Lcom/android/framework/protobuf/FieldType;

    .line 220
    array-length v2, v1

    :goto_39b
    if-ge v0, v2, :cond_3a8

    aget-object v3, v1, v0

    .line 221
    .local v3, "type":Lcom/android/framework/protobuf/FieldType;
    sget-object v4, Lcom/android/framework/protobuf/FieldType;->VALUES:[Lcom/android/framework/protobuf/FieldType;

    iget v5, v3, Lcom/android/framework/protobuf/FieldType;->id:I

    aput-object v3, v4, v5

    .line 220
    .end local v3    # "type":Lcom/android/framework/protobuf/FieldType;
    add-int/lit8 v0, v0, 0x1

    goto :goto_39b

    .line 223
    .end local v1    # "values":[Lcom/android/framework/protobuf/FieldType;
    :cond_3a8
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILcom/android/framework/protobuf/FieldType$Collection;Lcom/android/framework/protobuf/JavaType;)V
    .registers 7
    .param p3, "id"    # I
    .param p4, "collection"    # Lcom/android/framework/protobuf/FieldType$Collection;
    .param p5, "javaType"    # Lcom/android/framework/protobuf/JavaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/framework/protobuf/FieldType$Collection;",
            "Lcom/android/framework/protobuf/JavaType;",
            ")V"
        }
    .end annotation

    .line 100
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 101
    iput p3, p0, Lcom/android/framework/protobuf/FieldType;->id:I

    .line 102
    iput-object p4, p0, Lcom/android/framework/protobuf/FieldType;->collection:Lcom/android/framework/protobuf/FieldType$Collection;

    .line 103
    iput-object p5, p0, Lcom/android/framework/protobuf/FieldType;->javaType:Lcom/android/framework/protobuf/JavaType;

    .line 105
    sget-object p1, Lcom/android/framework/protobuf/FieldType$1;->$SwitchMap$com$google$protobuf$FieldType$Collection:[I

    invoke-virtual {p4}, Lcom/android/framework/protobuf/FieldType$Collection;->ordinal()I

    move-result p2

    aget p1, p1, p2

    packed-switch p1, :pswitch_data_3c

    .line 114
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/framework/protobuf/FieldType;->elementType:Ljava/lang/Class;

    goto :goto_26

    .line 110
    :pswitch_18
    invoke-virtual {p5}, Lcom/android/framework/protobuf/JavaType;->getBoxedType()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/android/framework/protobuf/FieldType;->elementType:Ljava/lang/Class;

    .line 111
    goto :goto_26

    .line 107
    :pswitch_1f
    invoke-virtual {p5}, Lcom/android/framework/protobuf/JavaType;->getBoxedType()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/android/framework/protobuf/FieldType;->elementType:Ljava/lang/Class;

    .line 108
    nop

    .line 118
    :goto_26
    const/4 p1, 0x0

    .line 119
    .local p1, "primitiveScalar":Z
    sget-object p2, Lcom/android/framework/protobuf/FieldType$Collection;->SCALAR:Lcom/android/framework/protobuf/FieldType$Collection;

    if-ne p4, p2, :cond_39

    .line 120
    sget-object p2, Lcom/android/framework/protobuf/FieldType$1;->$SwitchMap$com$google$protobuf$JavaType:[I

    invoke-virtual {p5}, Lcom/android/framework/protobuf/JavaType;->ordinal()I

    move-result v0

    aget p2, p2, v0

    packed-switch p2, :pswitch_data_44

    .line 126
    const/4 p1, 0x1

    goto :goto_39

    .line 124
    :pswitch_38
    nop

    .line 130
    :cond_39
    :goto_39
    iput-boolean p1, p0, Lcom/android/framework/protobuf/FieldType;->primitiveScalar:Z

    .line 131
    return-void

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_18
    .end packed-switch

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_38
        :pswitch_38
        :pswitch_38
    .end packed-switch
.end method

.method public static forId(I)Lcom/android/framework/protobuf/FieldType;
    .registers 3
    .param p0, "id"    # I

    .line 208
    if-ltz p0, :cond_b

    sget-object v0, Lcom/android/framework/protobuf/FieldType;->VALUES:[Lcom/android/framework/protobuf/FieldType;

    array-length v1, v0

    if-lt p0, v1, :cond_8

    goto :goto_b

    .line 211
    :cond_8
    aget-object v0, v0, p0

    return-object v0

    .line 209
    :cond_b
    :goto_b
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getGenericSuperList(Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 232
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 233
    .local v0, "genericInterfaces":[Ljava/lang/reflect/Type;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_23

    aget-object v3, v0, v2

    .line 234
    .local v3, "genericInterface":Ljava/lang/reflect/Type;
    instance-of v4, v3, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_20

    .line 235
    move-object v4, v3

    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    .line 236
    .local v4, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v4}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    .line 237
    .local v5, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v6, Ljava/util/List;

    invoke-virtual {v6, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_20

    .line 238
    return-object v3

    .line 233
    .end local v3    # "genericInterface":Ljava/lang/reflect/Type;
    .end local v4    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    .end local v5    # "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 244
    :cond_23
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 245
    .local v1, "type":Ljava/lang/reflect/Type;
    instance-of v2, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_3d

    .line 246
    move-object v2, v1

    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    .line 247
    .local v2, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 248
    .local v3, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v4, Ljava/util/List;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 249
    return-object v1

    .line 254
    .end local v2    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    .end local v3    # "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3d
    const/4 v2, 0x0

    return-object v2
.end method

.method private static getListParameter(Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .registers 12
    .param p1, "realTypes"    # [Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .line 269
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    :goto_1
    const-class v0, Ljava/util/List;

    const/4 v1, 0x0

    if-eq p0, v0, :cond_87

    .line 271
    invoke-static {p0}, Lcom/android/framework/protobuf/FieldType;->getGenericSuperList(Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 272
    .local v0, "genericType":Ljava/lang/reflect/Type;
    instance-of v2, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_69

    .line 274
    move-object v1, v0

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    .line 275
    .local v1, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    .line 276
    .local v2, "superArgs":[Ljava/lang/reflect/Type;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_16
    array-length v4, v2

    if-ge v3, v4, :cond_60

    .line 277
    aget-object v4, v2, v3

    .line 278
    .local v4, "superArg":Ljava/lang/reflect/Type;
    instance-of v5, v4, Ljava/lang/reflect/TypeVariable;

    if-eqz v5, :cond_5d

    .line 281
    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v5

    .line 282
    .local v5, "clazzParams":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    array-length v6, p1

    array-length v7, v5

    if-ne v6, v7, :cond_55

    .line 287
    const/4 v6, 0x0

    .line 288
    .local v6, "foundReplacement":Z
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_29
    array-length v8, v5

    if-ge v7, v8, :cond_39

    .line 289
    aget-object v8, v5, v7

    if-ne v4, v8, :cond_36

    .line 290
    aget-object v8, p1, v7

    .line 291
    .local v8, "realType":Ljava/lang/reflect/Type;
    aput-object v8, v2, v3

    .line 292
    const/4 v6, 0x1

    .line 293
    goto :goto_39

    .line 288
    .end local v8    # "realType":Ljava/lang/reflect/Type;
    :cond_36
    add-int/lit8 v7, v7, 0x1

    goto :goto_29

    .line 296
    .end local v7    # "j":I
    :cond_39
    :goto_39
    if-eqz v6, :cond_3c

    goto :goto_5d

    .line 297
    :cond_3c
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to find replacement for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 283
    .end local v6    # "foundReplacement":Z
    :cond_55
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Type array mismatch"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 276
    .end local v4    # "superArg":Ljava/lang/reflect/Type;
    .end local v5    # "clazzParams":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    :cond_5d
    :goto_5d
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 302
    .end local v3    # "i":I
    :cond_60
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 304
    .local v3, "parent":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object p1, v2

    .line 305
    move-object p0, v3

    .line 306
    goto :goto_1

    .line 311
    .end local v1    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    .end local v2    # "superArgs":[Ljava/lang/reflect/Type;
    .end local v3    # "parent":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_69
    sget-object p1, Lcom/android/framework/protobuf/FieldType;->EMPTY_TYPES:[Ljava/lang/reflect/Type;

    .line 312
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v2

    array-length v3, v2

    :goto_70
    if-ge v1, v3, :cond_81

    aget-object v4, v2, v1

    .line 313
    .local v4, "iface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v5, Ljava/util/List;

    invoke-virtual {v5, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_7e

    .line 314
    move-object p0, v4

    .line 315
    goto :goto_1

    .line 312
    .end local v4    # "iface":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_7e
    add-int/lit8 v1, v1, 0x1

    goto :goto_70

    .line 318
    :cond_81
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    .line 319
    .end local v0    # "genericType":Ljava/lang/reflect/Type;
    goto/16 :goto_1

    .line 321
    :cond_87
    array-length v0, p1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_8e

    .line 324
    aget-object v0, p1, v1

    return-object v0

    .line 322
    :cond_8e
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to identify parameter type for List<T>"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private isValidForList(Ljava/lang/reflect/Field;)Z
    .registers 8
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .line 184
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 185
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v1, p0, Lcom/android/framework/protobuf/FieldType;->javaType:Lcom/android/framework/protobuf/JavaType;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/JavaType;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 187
    const/4 v1, 0x0

    return v1

    .line 189
    :cond_12
    sget-object v1, Lcom/android/framework/protobuf/FieldType;->EMPTY_TYPES:[Ljava/lang/reflect/Type;

    .line 190
    .local v1, "types":[Ljava/lang/reflect/Type;
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v2

    .line 191
    .local v2, "genericType":Ljava/lang/reflect/Type;
    instance-of v3, v2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_26

    .line 192
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    .line 194
    :cond_26
    invoke-static {v0, v1}, Lcom/android/framework/protobuf/FieldType;->getListParameter(Ljava/lang/Class;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v3

    .line 195
    .local v3, "listParameter":Ljava/lang/reflect/Type;
    instance-of v4, v3, Ljava/lang/Class;

    if-nez v4, :cond_30

    .line 197
    const/4 v4, 0x1

    return v4

    .line 199
    :cond_30
    iget-object v4, p0, Lcom/android/framework/protobuf/FieldType;->elementType:Ljava/lang/Class;

    move-object v5, v3

    check-cast v5, Ljava/lang/Class;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    return v4
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/framework/protobuf/FieldType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 40
    const-class v0, Lcom/android/framework/protobuf/FieldType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/FieldType;

    return-object v0
.end method

.method public static values()[Lcom/android/framework/protobuf/FieldType;
    .registers 1

    .line 40
    sget-object v0, Lcom/android/framework/protobuf/FieldType;->$VALUES:[Lcom/android/framework/protobuf/FieldType;

    invoke-virtual {v0}, [Lcom/android/framework/protobuf/FieldType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/framework/protobuf/FieldType;

    return-object v0
.end method


# virtual methods
.method public getJavaType()Lcom/android/framework/protobuf/JavaType;
    .registers 2

    .line 143
    iget-object v0, p0, Lcom/android/framework/protobuf/FieldType;->javaType:Lcom/android/framework/protobuf/JavaType;

    return-object v0
.end method

.method public id()I
    .registers 2

    .line 135
    iget v0, p0, Lcom/android/framework/protobuf/FieldType;->id:I

    return v0
.end method

.method public isList()Z
    .registers 2

    .line 166
    iget-object v0, p0, Lcom/android/framework/protobuf/FieldType;->collection:Lcom/android/framework/protobuf/FieldType$Collection;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/FieldType$Collection;->isList()Z

    move-result v0

    return v0
.end method

.method public isMap()Z
    .registers 3

    .line 171
    iget-object v0, p0, Lcom/android/framework/protobuf/FieldType;->collection:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v1, Lcom/android/framework/protobuf/FieldType$Collection;->MAP:Lcom/android/framework/protobuf/FieldType$Collection;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isPacked()Z
    .registers 3

    .line 148
    sget-object v0, Lcom/android/framework/protobuf/FieldType$Collection;->PACKED_VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    iget-object v1, p0, Lcom/android/framework/protobuf/FieldType;->collection:Lcom/android/framework/protobuf/FieldType$Collection;

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/FieldType$Collection;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isPrimitiveScalar()Z
    .registers 2

    .line 156
    iget-boolean v0, p0, Lcom/android/framework/protobuf/FieldType;->primitiveScalar:Z

    return v0
.end method

.method public isScalar()Z
    .registers 3

    .line 161
    iget-object v0, p0, Lcom/android/framework/protobuf/FieldType;->collection:Lcom/android/framework/protobuf/FieldType$Collection;

    sget-object v1, Lcom/android/framework/protobuf/FieldType$Collection;->SCALAR:Lcom/android/framework/protobuf/FieldType$Collection;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isValidForField(Ljava/lang/reflect/Field;)Z
    .registers 4
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .line 176
    sget-object v0, Lcom/android/framework/protobuf/FieldType$Collection;->VECTOR:Lcom/android/framework/protobuf/FieldType$Collection;

    iget-object v1, p0, Lcom/android/framework/protobuf/FieldType;->collection:Lcom/android/framework/protobuf/FieldType$Collection;

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/FieldType$Collection;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 177
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/FieldType;->isValidForList(Ljava/lang/reflect/Field;)Z

    move-result v0

    return v0

    .line 179
    :cond_f
    iget-object v0, p0, Lcom/android/framework/protobuf/FieldType;->javaType:Lcom/android/framework/protobuf/JavaType;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/JavaType;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method
