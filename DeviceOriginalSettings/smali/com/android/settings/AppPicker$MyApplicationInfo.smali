.class Lcom/flyme/DeviceOriginalSettings/AppPicker$MyApplicationInfo;
.super Ljava/lang/Object;
.source "AppPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/DeviceOriginalSettings/AppPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyApplicationInfo"
.end annotation


# instance fields
.field info:Landroid/content/pm/ApplicationInfo;

.field label:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/flyme/DeviceOriginalSettings/AppPicker;


# direct methods
.method constructor <init>(Lcom/flyme/DeviceOriginalSettings/AppPicker;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/flyme/DeviceOriginalSettings/AppPicker$MyApplicationInfo;->this$0:Lcom/flyme/DeviceOriginalSettings/AppPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
