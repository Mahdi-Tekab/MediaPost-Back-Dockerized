import { ApiProperty } from '@nestjs/swagger';

export class CreatePostDto {
  @ApiProperty()
  id: number;
  @ApiProperty()
  desc: string;
  @ApiProperty()
  createdAt: Date;
  @ApiProperty({ default: 'Google' })
  posteddBy: string;
  @ApiProperty()
  like: number;
  @ApiProperty()
  comments: number;
  @ApiProperty()
  media_url: string;
  @ApiProperty()
  media_type: string;
  @ApiProperty()
  liked: boolean;
}
