; ModuleID = 'llvm/cpp_transcoder/FIND_MAXIMUM_DOT_PRODUCT_TWO_ARRAYS_INSERTION_0S/FIND_MAXIMUM_DOT_PRODUCT_TWO_ARRAYS_INSERTION_0S_reprocessed.cpp'
source_filename = "llvm/cpp_transcoder/FIND_MAXIMUM_DOT_PRODUCT_TWO_ARRAYS_INSERTION_0S/FIND_MAXIMUM_DOT_PRODUCT_TWO_ARRAYS_INSERTION_0S_reprocessed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_FIND_MAXIMUM_DOT_PRODUCT_TWO_ARRAYS_INSERTION_0S_reprocessed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldPiS_ii(i32* nocapture noundef readonly %0, i32* nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 {
  %5 = add i32 %3, 1
  %6 = zext i32 %5 to i64
  %7 = add i32 %2, 1
  %8 = zext i32 %7 to i64
  %9 = mul nuw i64 %6, %8
  %10 = alloca i64, i64 %9, align 16
  %11 = bitcast i64* %10 to i8*
  %12 = shl nuw i64 %9, 3
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %11, i8 0, i64 %12, i1 false)
  %13 = icmp slt i32 %3, 1
  %14 = sext i32 %2 to i64
  br i1 %13, label %28, label %15

15:                                               ; preds = %4, %35
  %16 = phi i64 [ %36, %35 ], [ 1, %4 ]
  %17 = icmp sgt i64 %16, %14
  br i1 %17, label %35, label %18

18:                                               ; preds = %15
  %19 = add nsw i64 %16, -1
  %20 = mul nuw nsw i64 %19, %8
  %21 = getelementptr inbounds i64, i64* %10, i64 %20
  %22 = getelementptr inbounds i32, i32* %1, i64 %19
  %23 = load i32, i32* %22, align 4, !tbaa !5
  %24 = mul nuw nsw i64 %16, %8
  %25 = getelementptr inbounds i64, i64* %10, i64 %24
  %26 = getelementptr inbounds i64, i64* %25, i64 %19
  %27 = load i64, i64* %26, align 8, !tbaa !9
  br label %38

28:                                               ; preds = %35, %4
  %29 = sext i32 %3 to i64
  %30 = mul nsw i64 %29, %8
  %31 = getelementptr inbounds i64, i64* %10, i64 %30
  %32 = getelementptr inbounds i64, i64* %31, i64 %14
  %33 = load i64, i64* %32, align 8, !tbaa !9
  %34 = trunc i64 %33 to i32
  ret i32 %34

35:                                               ; preds = %38, %15
  %36 = add nuw nsw i64 %16, 1
  %37 = icmp eq i64 %36, %6
  br i1 %37, label %28, label %15, !llvm.loop !11

38:                                               ; preds = %18, %38
  %39 = phi i64 [ %27, %18 ], [ %50, %38 ]
  %40 = phi i64 [ %16, %18 ], [ %52, %38 ]
  %41 = add nsw i64 %40, -1
  %42 = getelementptr inbounds i64, i64* %21, i64 %41
  %43 = load i64, i64* %42, align 8, !tbaa !9
  %44 = getelementptr inbounds i32, i32* %0, i64 %41
  %45 = load i32, i32* %44, align 4, !tbaa !5
  %46 = mul nsw i32 %23, %45
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %43, %47
  %49 = icmp slt i64 %48, %39
  %50 = select i1 %49, i64 %39, i64 %48
  %51 = getelementptr inbounds i64, i64* %25, i64 %40
  store i64 %50, i64* %51, align 8, !tbaa !9
  %52 = add nuw nsw i64 %40, 1
  %53 = icmp eq i64 %52, %8
  br i1 %53, label %35, label %38, !llvm.loop !13
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_FIND_MAXIMUM_DOT_PRODUCT_TWO_ARRAYS_INSERTION_0S_reprocessed.cpp() #5 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #6
  ret void
}

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #5 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"long", !7, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
