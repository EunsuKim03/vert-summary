; ModuleID = 'llvm/cpp_transcoder/COUNT_PALINDROME_SUB_STRINGS_STRING/COUNT_PALINDROME_SUB_STRINGS_STRING_reprocessed.cpp'
source_filename = "llvm/cpp_transcoder/COUNT_PALINDROME_SUB_STRINGS_STRING/COUNT_PALINDROME_SUB_STRINGS_STRING_reprocessed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_COUNT_PALINDROME_SUB_STRINGS_STRING_reprocessed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldPci(i8* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = zext i32 %1 to i64
  %4 = mul nuw i64 %3, %3
  %5 = alloca i32, i64 %4, align 16
  %6 = bitcast i32* %5 to i8*
  %7 = shl nuw i64 %4, 2
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %6, i8 0, i64 %7, i1 false)
  %8 = alloca i8, i64 %4, align 16
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %8, i8 0, i64 %4, i1 false)
  %9 = icmp sgt i32 %1, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = add nsw i64 %3, -1
  %12 = and i64 %3, 3
  %13 = icmp ult i64 %11, 3
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = and i64 %3, 4294967292
  br label %40

16:                                               ; preds = %2
  %17 = add i32 %1, -1
  br label %115

18:                                               ; preds = %40, %10
  %19 = phi i64 [ 0, %10 ], [ %58, %40 ]
  %20 = icmp eq i64 %12, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %18, %21
  %22 = phi i64 [ %27, %21 ], [ %19, %18 ]
  %23 = phi i64 [ %28, %21 ], [ 0, %18 ]
  %24 = mul nuw nsw i64 %22, %3
  %25 = getelementptr inbounds i8, i8* %8, i64 %24
  %26 = getelementptr inbounds i8, i8* %25, i64 %22
  store i8 1, i8* %26, align 1, !tbaa !5
  %27 = add nuw nsw i64 %22, 1
  %28 = add i64 %23, 1
  %29 = icmp eq i64 %28, %12
  br i1 %29, label %30, label %21, !llvm.loop !9

30:                                               ; preds = %21, %18
  %31 = add i32 %1, -1
  %32 = icmp sgt i32 %1, 1
  br i1 %32, label %33, label %115

33:                                               ; preds = %30
  %34 = zext i32 %31 to i64
  %35 = load i8, i8* %0, align 1, !tbaa !11
  %36 = and i64 %34, 1
  %37 = icmp eq i32 %31, 1
  br i1 %37, label %61, label %38

38:                                               ; preds = %33
  %39 = and i64 %34, 4294967294
  br label %81

40:                                               ; preds = %40, %14
  %41 = phi i64 [ 0, %14 ], [ %58, %40 ]
  %42 = phi i64 [ 0, %14 ], [ %59, %40 ]
  %43 = mul nuw nsw i64 %41, %3
  %44 = getelementptr inbounds i8, i8* %8, i64 %43
  %45 = getelementptr inbounds i8, i8* %44, i64 %41
  store i8 1, i8* %45, align 4, !tbaa !5
  %46 = or i64 %41, 1
  %47 = mul nuw nsw i64 %46, %3
  %48 = getelementptr inbounds i8, i8* %8, i64 %47
  %49 = getelementptr inbounds i8, i8* %48, i64 %46
  store i8 1, i8* %49, align 1, !tbaa !5
  %50 = or i64 %41, 2
  %51 = mul nuw nsw i64 %50, %3
  %52 = getelementptr inbounds i8, i8* %8, i64 %51
  %53 = getelementptr inbounds i8, i8* %52, i64 %50
  store i8 1, i8* %53, align 2, !tbaa !5
  %54 = or i64 %41, 3
  %55 = mul nuw nsw i64 %54, %3
  %56 = getelementptr inbounds i8, i8* %8, i64 %55
  %57 = getelementptr inbounds i8, i8* %56, i64 %54
  store i8 1, i8* %57, align 1, !tbaa !5
  %58 = add nuw nsw i64 %41, 4
  %59 = add i64 %42, 4
  %60 = icmp eq i64 %59, %15
  br i1 %60, label %18, label %40, !llvm.loop !12

61:                                               ; preds = %106, %33
  %62 = phi i8 [ %35, %33 ], [ %98, %106 ]
  %63 = phi i64 [ 0, %33 ], [ %96, %106 ]
  %64 = icmp eq i64 %36, 0
  br i1 %64, label %76, label %65

65:                                               ; preds = %61
  %66 = add nuw nsw i64 %63, 1
  %67 = getelementptr inbounds i8, i8* %0, i64 %66
  %68 = load i8, i8* %67, align 1, !tbaa !11
  %69 = icmp eq i8 %62, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = mul nuw nsw i64 %63, %3
  %72 = getelementptr inbounds i8, i8* %8, i64 %71
  %73 = getelementptr inbounds i8, i8* %72, i64 %66
  store i8 1, i8* %73, align 1, !tbaa !5
  %74 = getelementptr inbounds i32, i32* %5, i64 %71
  %75 = getelementptr inbounds i32, i32* %74, i64 %66
  store i32 1, i32* %75, align 4, !tbaa !14
  br label %76

76:                                               ; preds = %65, %70, %61
  %77 = icmp sgt i32 %1, 2
  br i1 %77, label %78, label %115

78:                                               ; preds = %76
  %79 = add nsw i32 %1, -2
  %80 = zext i32 %1 to i64
  br label %109

81:                                               ; preds = %106, %38
  %82 = phi i8 [ %35, %38 ], [ %98, %106 ]
  %83 = phi i64 [ 0, %38 ], [ %96, %106 ]
  %84 = phi i64 [ 0, %38 ], [ %107, %106 ]
  %85 = or i64 %83, 1
  %86 = getelementptr inbounds i8, i8* %0, i64 %85
  %87 = load i8, i8* %86, align 1, !tbaa !11
  %88 = icmp eq i8 %82, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %81
  %90 = mul nuw nsw i64 %83, %3
  %91 = getelementptr inbounds i8, i8* %8, i64 %90
  %92 = getelementptr inbounds i8, i8* %91, i64 %85
  store i8 1, i8* %92, align 1, !tbaa !5
  %93 = getelementptr inbounds i32, i32* %5, i64 %90
  %94 = getelementptr inbounds i32, i32* %93, i64 %85
  store i32 1, i32* %94, align 4, !tbaa !14
  br label %95

95:                                               ; preds = %81, %89
  %96 = add nuw nsw i64 %83, 2
  %97 = getelementptr inbounds i8, i8* %0, i64 %96
  %98 = load i8, i8* %97, align 1, !tbaa !11
  %99 = icmp eq i8 %87, %98
  br i1 %99, label %100, label %106

100:                                              ; preds = %95
  %101 = mul nuw nsw i64 %85, %3
  %102 = getelementptr inbounds i8, i8* %8, i64 %101
  %103 = getelementptr inbounds i8, i8* %102, i64 %96
  store i8 1, i8* %103, align 1, !tbaa !5
  %104 = getelementptr inbounds i32, i32* %5, i64 %101
  %105 = getelementptr inbounds i32, i32* %104, i64 %96
  store i32 1, i32* %105, align 4, !tbaa !14
  br label %106

106:                                              ; preds = %100, %95
  %107 = add i64 %84, 2
  %108 = icmp eq i64 %107, %39
  br i1 %108, label %61, label %81, !llvm.loop !16

109:                                              ; preds = %78, %120
  %110 = phi i64 [ 2, %78 ], [ %121, %120 ]
  %111 = phi i32 [ %79, %78 ], [ %122, %120 ]
  %112 = icmp ult i64 %110, %80
  br i1 %112, label %113, label %120

113:                                              ; preds = %109
  %114 = zext i32 %111 to i64
  br label %124

115:                                              ; preds = %120, %30, %16, %76
  %116 = phi i32 [ %31, %76 ], [ %31, %30 ], [ %17, %16 ], [ %31, %120 ]
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %5, i64 %117
  %119 = load i32, i32* %118, align 4, !tbaa !14
  ret i32 %119

120:                                              ; preds = %170, %109
  %121 = add nuw nsw i64 %110, 1
  %122 = add i32 %111, -1
  %123 = icmp eq i64 %121, %3
  br i1 %123, label %115, label %109, !llvm.loop !17

124:                                              ; preds = %113, %170
  %125 = phi i64 [ 0, %113 ], [ %154, %170 ]
  %126 = add nuw nsw i64 %125, %110
  %127 = getelementptr inbounds i8, i8* %0, i64 %125
  %128 = load i8, i8* %127, align 1, !tbaa !11
  %129 = getelementptr inbounds i8, i8* %0, i64 %126
  %130 = load i8, i8* %129, align 1, !tbaa !11
  %131 = icmp eq i8 %128, %130
  br i1 %131, label %132, label %144

132:                                              ; preds = %124
  %133 = add nuw nsw i64 %125, 1
  %134 = mul nuw nsw i64 %133, %3
  %135 = getelementptr inbounds i8, i8* %8, i64 %134
  %136 = add nsw i64 %126, -1
  %137 = getelementptr inbounds i8, i8* %135, i64 %136
  %138 = load i8, i8* %137, align 1, !tbaa !5, !range !18
  %139 = icmp eq i8 %138, 0
  br i1 %139, label %144, label %140

140:                                              ; preds = %132
  %141 = mul nuw nsw i64 %125, %3
  %142 = getelementptr inbounds i8, i8* %8, i64 %141
  %143 = getelementptr inbounds i8, i8* %142, i64 %126
  store i8 1, i8* %143, align 1, !tbaa !5
  br label %144

144:                                              ; preds = %140, %132, %124
  %145 = mul nuw nsw i64 %125, %3
  %146 = getelementptr inbounds i8, i8* %8, i64 %145
  %147 = getelementptr inbounds i8, i8* %146, i64 %126
  %148 = load i8, i8* %147, align 1, !tbaa !5, !range !18
  %149 = icmp eq i8 %148, 0
  %150 = getelementptr inbounds i32, i32* %5, i64 %145
  %151 = add nsw i64 %126, -1
  %152 = getelementptr inbounds i32, i32* %150, i64 %151
  %153 = load i32, i32* %152, align 4, !tbaa !14
  %154 = add nuw nsw i64 %125, 1
  %155 = mul nuw nsw i64 %154, %3
  %156 = getelementptr inbounds i32, i32* %5, i64 %155
  %157 = getelementptr inbounds i32, i32* %156, i64 %126
  %158 = load i32, i32* %157, align 4, !tbaa !14
  br i1 %149, label %165, label %159

159:                                              ; preds = %144
  %160 = getelementptr inbounds i32, i32* %156, i64 %151
  %161 = load i32, i32* %160, align 4, !tbaa !14
  %162 = add i32 %153, 1
  %163 = add i32 %162, %158
  %164 = sub i32 %163, %161
  br label %170

165:                                              ; preds = %144
  %166 = add nsw i32 %158, %153
  %167 = getelementptr inbounds i32, i32* %156, i64 %151
  %168 = load i32, i32* %167, align 4, !tbaa !14
  %169 = sub i32 %166, %168
  br label %170

170:                                              ; preds = %165, %159
  %171 = phi i32 [ %169, %165 ], [ %164, %159 ]
  %172 = getelementptr inbounds i32, i32* %150, i64 %126
  store i32 %171, i32* %172, align 4, !tbaa !14
  %173 = icmp eq i64 %154, %114
  br i1 %173, label %120, label %124, !llvm.loop !19
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_COUNT_PALINDROME_SUB_STRINGS_STRING_reprocessed.cpp() #5 section ".text.startup" {
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
!6 = !{!"bool", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = !{!7, !7, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!15, !15, i64 0}
!15 = !{!"int", !7, i64 0}
!16 = distinct !{!16, !13}
!17 = distinct !{!17, !13}
!18 = !{i8 0, i8 2}
!19 = distinct !{!19, !13}
