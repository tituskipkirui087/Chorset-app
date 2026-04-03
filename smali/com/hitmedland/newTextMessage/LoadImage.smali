.class public Lcom/hitmedland/newTextMessage/LoadImage;
.super Ljava/lang/Object;
.source "LoadImage.java"


# instance fields
.field final REQUEST_CODE:I

.field activity:Landroid/support/v7/app/AppCompatActivity;

.field explanationCancel:Ljava/lang/String;

.field explanationDesc:Ljava/lang/String;

.field explanationOK:Ljava/lang/String;

.field explanationTitle:Ljava/lang/String;

.field reqHeight:I

.field reqWidth:I

.field selectedImage:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/support/v7/app/AppCompatActivity;)V
    .locals 1
    .param p1, "activity"    # Landroid/support/v7/app/AppCompatActivity;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/16 v0, 0x33

    iput v0, p0, Lcom/hitmedland/newTextMessage/LoadImage;->REQUEST_CODE:I

    .line 30
    const-string v0, "Load Picture Permission"

    iput-object v0, p0, Lcom/hitmedland/newTextMessage/LoadImage;->explanationTitle:Ljava/lang/String;

    .line 31
    const-string v0, "The app needs to read the picture from your storage."

    iput-object v0, p0, Lcom/hitmedland/newTextMessage/LoadImage;->explanationDesc:Ljava/lang/String;

    .line 32
    const-string v0, "OK"

    iput-object v0, p0, Lcom/hitmedland/newTextMessage/LoadImage;->explanationOK:Ljava/lang/String;

    .line 33
    const-string v0, "CANCEL"

    iput-object v0, p0, Lcom/hitmedland/newTextMessage/LoadImage;->explanationCancel:Ljava/lang/String;

    .line 53
    iput-object p1, p0, Lcom/hitmedland/newTextMessage/LoadImage;->activity:Landroid/support/v7/app/AppCompatActivity;

    .line 54
    return-void
.end method

.method public static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 6
    .param p0, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .prologue
    .line 121
    iget v2, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 122
    .local v2, "height":I
    iget v4, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 123
    .local v4, "width":I
    const/4 v3, 0x1

    .line 125
    .local v3, "inSampleSize":I
    if-gt v2, p2, :cond_0

    if-le v4, p1, :cond_1

    .line 127
    :cond_0
    div-int/lit8 v0, v2, 0x2

    .line 128
    .local v0, "halfHeight":I
    div-int/lit8 v1, v4, 0x2

    .line 132
    .local v1, "halfWidth":I
    :goto_0
    div-int v5, v0, v3

    if-lt v5, p2, :cond_1

    div-int v5, v1, v3

    if-lt v5, p1, :cond_1

    .line 134
    mul-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 138
    .end local v0    # "halfHeight":I
    .end local v1    # "halfWidth":I
    :cond_1
    return v3
.end method


# virtual methods
.method public decodeSampledBitmapFromResource(Landroid/net/Uri;II)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "selectedImage"    # Landroid/net/Uri;
    .param p2, "reqWidth"    # I
    .param p3, "reqHeight"    # I

    .prologue
    .line 57
    iput-object p1, p0, Lcom/hitmedland/newTextMessage/LoadImage;->selectedImage:Landroid/net/Uri;

    .line 58
    iput p3, p0, Lcom/hitmedland/newTextMessage/LoadImage;->reqHeight:I

    .line 59
    iput p2, p0, Lcom/hitmedland/newTextMessage/LoadImage;->reqWidth:I

    .line 61
    iget-object v1, p0, Lcom/hitmedland/newTextMessage/LoadImage;->activity:Landroid/support/v7/app/AppCompatActivity;

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 64
    iget-object v1, p0, Lcom/hitmedland/newTextMessage/LoadImage;->activity:Landroid/support/v7/app/AppCompatActivity;

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v1, v2}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    new-instance v0, Lcom/hitmedland/newTextMessage/Alert;

    invoke-direct {v0}, Lcom/hitmedland/newTextMessage/Alert;-><init>()V

    .line 68
    .local v0, "alert":Lcom/hitmedland/newTextMessage/Alert;
    iget-object v1, p0, Lcom/hitmedland/newTextMessage/LoadImage;->explanationTitle:Ljava/lang/String;

    iget-object v2, p0, Lcom/hitmedland/newTextMessage/LoadImage;->explanationDesc:Ljava/lang/String;

    iget-object v3, p0, Lcom/hitmedland/newTextMessage/LoadImage;->explanationOK:Ljava/lang/String;

    iget-object v4, p0, Lcom/hitmedland/newTextMessage/LoadImage;->explanationCancel:Ljava/lang/String;

    iget-object v5, p0, Lcom/hitmedland/newTextMessage/LoadImage;->activity:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual/range {v0 .. v5}, Lcom/hitmedland/newTextMessage/Alert;->DisplayText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    .line 69
    iget-object v1, p0, Lcom/hitmedland/newTextMessage/LoadImage;->activity:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v1}, Landroid/support/v7/app/AppCompatActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/hitmedland/newTextMessage/LoadImage;->explanationTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/hitmedland/newTextMessage/Alert;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 70
    new-instance v1, Lcom/hitmedland/newTextMessage/LoadImage$1;

    invoke-direct {v1, p0}, Lcom/hitmedland/newTextMessage/LoadImage$1;-><init>(Lcom/hitmedland/newTextMessage/LoadImage;)V

    invoke-virtual {v0, v1}, Lcom/hitmedland/newTextMessage/Alert;->setPositiveButtonListener(Lcom/hitmedland/newTextMessage/Alert$PositiveButtonListener;)V

    .line 81
    .end local v0    # "alert":Lcom/hitmedland/newTextMessage/Alert;
    :goto_0
    const/4 v1, 0x0

    .line 83
    :goto_1
    return-object v1

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/hitmedland/newTextMessage/LoadImage;->activity:Landroid/support/v7/app/AppCompatActivity;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    invoke-static {v1, v2, v3}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .line 83
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/hitmedland/newTextMessage/LoadImage;->decodeSampledBitmapFromResource_direct(Landroid/net/Uri;II)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1
.end method

.method public decodeSampledBitmapFromResource_direct(Landroid/net/Uri;II)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "selectedImage"    # Landroid/net/Uri;
    .param p2, "reqWidth"    # I
    .param p3, "reqHeight"    # I

    .prologue
    .line 89
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/hitmedland/newTextMessage/LoadImage;->decodeSampledBitmapFromStream(Landroid/net/Uri;II)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 93
    :goto_0
    return-object v1

    .line 90
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 93
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public decodeSampledBitmapFromStream(Landroid/net/Uri;II)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "selectedImage"    # Landroid/net/Uri;
    .param p2, "reqWidth"    # I
    .param p3, "reqHeight"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 99
    iget-object v4, p0, Lcom/hitmedland/newTextMessage/LoadImage;->activity:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v4}, Landroid/support/v7/app/AppCompatActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 101
    .local v0, "inputStream":Ljava/io/InputStream;
    instance-of v4, v0, Ljava/io/BufferedInputStream;

    if-nez v4, :cond_0

    .line 102
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v0    # "inputStream":Ljava/io/InputStream;
    .local v1, "inputStream":Ljava/io/InputStream;
    move-object v0, v1

    .line 104
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .restart local v0    # "inputStream":Ljava/io/InputStream;
    :cond_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 105
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 106
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v5, v5, v5, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 107
    .local v3, "rect":Landroid/graphics/Rect;
    invoke-static {v0, v3, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 110
    invoke-static {v2, p2, p3}, Lcom/hitmedland/newTextMessage/LoadImage;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v4

    iput v4, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 113
    const/4 v4, 0x0

    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 114
    iget-object v4, p0, Lcom/hitmedland/newTextMessage/LoadImage;->activity:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v4}, Landroid/support/v7/app/AppCompatActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 115
    invoke-static {v0, v3, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    return-object v4
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    const/4 v0, 0x0

    .line 150
    packed-switch p1, :pswitch_data_0

    .line 165
    :cond_0
    :goto_0
    return-object v0

    .line 153
    :pswitch_0
    array-length v1, p3

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget v1, p3, v1

    if-nez v1, :cond_0

    .line 156
    iget-object v0, p0, Lcom/hitmedland/newTextMessage/LoadImage;->selectedImage:Landroid/net/Uri;

    iget v1, p0, Lcom/hitmedland/newTextMessage/LoadImage;->reqWidth:I

    iget v2, p0, Lcom/hitmedland/newTextMessage/LoadImage;->reqHeight:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/hitmedland/newTextMessage/LoadImage;->decodeSampledBitmapFromResource_direct(Landroid/net/Uri;II)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 150
    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_0
    .end packed-switch
.end method

.method public setExplanationCancel(Ljava/lang/String;)V
    .locals 0
    .param p1, "explanationCancel"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/hitmedland/newTextMessage/LoadImage;->explanationCancel:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setExplanationDesc(Ljava/lang/String;)V
    .locals 0
    .param p1, "explanationDesc"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/hitmedland/newTextMessage/LoadImage;->explanationDesc:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setExplanationOK(Ljava/lang/String;)V
    .locals 0
    .param p1, "explanationOK"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/hitmedland/newTextMessage/LoadImage;->explanationOK:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setExplanationTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "explanationTitle"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/hitmedland/newTextMessage/LoadImage;->explanationTitle:Ljava/lang/String;

    .line 38
    return-void
.end method
